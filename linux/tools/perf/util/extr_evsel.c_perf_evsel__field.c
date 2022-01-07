
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int dummy; } ;
struct evsel {int tp_format; } ;


 struct tep_format_field* tep_find_field (int ,char const*) ;

struct tep_format_field *perf_evsel__field(struct evsel *evsel, const char *name)
{
 return tep_find_field(evsel->tp_format, name);
}
