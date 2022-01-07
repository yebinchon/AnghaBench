
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 char* perf_evsel__name (struct evsel*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *fixunit(char *buf, struct evsel *evsel,
      const char *unit)
{
 if (!strncmp(unit, "of all", 6)) {
  snprintf(buf, 1024, "%s %s", perf_evsel__name(evsel),
    unit);
  return buf;
 }
 return unit;
}
