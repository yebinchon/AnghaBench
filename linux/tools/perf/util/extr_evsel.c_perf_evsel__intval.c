
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tep_format_field {int dummy; } ;
struct perf_sample {int dummy; } ;
struct evsel {int needs_swap; } ;


 int format_field__intval (struct tep_format_field*,struct perf_sample*,int ) ;
 struct tep_format_field* perf_evsel__field (struct evsel*,char const*) ;

u64 perf_evsel__intval(struct evsel *evsel, struct perf_sample *sample,
         const char *name)
{
 struct tep_format_field *field = perf_evsel__field(evsel, name);

 if (!field)
  return 0;

 return field ? format_field__intval(field, sample, evsel->needs_swap) : 0;
}
