
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 int perf_evsel__name (struct evsel*) ;
 int scnprintf (char*,size_t,char*,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void get_handler_name(char *str, size_t size,
        struct evsel *evsel)
{
 char *p = str;

 scnprintf(str, size, "stat__%s", perf_evsel__name(evsel));

 while ((p = strchr(p, ':'))) {
  *p = '_';
  p++;
 }
}
