
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {char* filter; } ;


 scalar_t__ asprintf (char**,char const*,char*,char const*) ;
 int free (char*) ;
 int perf_evsel__set_filter (struct evsel*,char const*) ;

__attribute__((used)) static int perf_evsel__append_filter(struct evsel *evsel,
         const char *fmt, const char *filter)
{
 char *new_filter;

 if (evsel->filter == ((void*)0))
  return perf_evsel__set_filter(evsel, filter);

 if (asprintf(&new_filter, fmt, evsel->filter, filter) > 0) {
  free(evsel->filter);
  evsel->filter = new_filter;
  return 0;
 }

 return -1;
}
