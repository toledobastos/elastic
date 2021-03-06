% Generated by roxygen2 (4.0.2): do not edit by hand
\name{alias}
\alias{alias}
\alias{alias_create}
\alias{alias_delete}
\alias{alias_exists}
\alias{alias_get}
\alias{aliases_get}
\title{Elasticsearch alias APIs}
\usage{
alias_get(index = NULL, alias = NULL, ignore_unavailable = FALSE,
  callopts = list())

aliases_get(index = NULL, alias = NULL, ignore_unavailable = FALSE,
  callopts = list())

alias_exists(index = NULL, alias = NULL, callopts = list())

alias_create(index = NULL, alias, routing = NULL, filter = NULL,
  callopts = list())

alias_delete(index = NULL, alias, callopts = list())
}
\arguments{
\item{index}{An index name}

\item{alias}{An alias name}

\item{ignore_unavailable}{(logical) What to do if an specified index name doesn't exist. If set
to TRUE then those indices are ignored.}

\item{callopts}{Curl args passed on to \code{\link[httr]{POST}}}

\item{routing}{Ignored for now}

\item{filter}{Ignored for now}
}
\description{
Elasticsearch alias APIs
}
\examples{
\donttest{
# Retrieve a specified alias
alias_get(index="plos")
alias_get(alias="*")
aliases_get()

# Check for alias existence
alias_exists(index = "plos")

# Create/update an alias
alias_create(index = "plos", alias = "tables")

# Delete an alias
alias_delete(index = "plos", alias = "tables")
}
}
\author{
Scott Chamberlain <myrmecocystus@gmail.com>
}
\references{
\url{http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/indices-aliases.html}
}

