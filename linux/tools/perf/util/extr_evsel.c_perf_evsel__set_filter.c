
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {char* filter; } ;


 int free (char*) ;
 char* strdup (char const*) ;

int perf_evsel__set_filter(struct evsel *evsel, const char *filter)
{
 char *new_filter = strdup(filter);

 if (new_filter != ((void*)0)) {
  free(evsel->filter);
  evsel->filter = new_filter;
  return 0;
 }

 return -1;
}
