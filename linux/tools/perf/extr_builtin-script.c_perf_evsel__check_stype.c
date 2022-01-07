
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct evsel {int dummy; } ;
typedef enum perf_output_field { ____Placeholder_perf_output_field } perf_output_field ;


 int perf_evsel__do_check_stype (struct evsel*,int ,char const*,int,int) ;

__attribute__((used)) static int perf_evsel__check_stype(struct evsel *evsel,
       u64 sample_type, const char *sample_msg,
       enum perf_output_field field)
{
 return perf_evsel__do_check_stype(evsel, sample_type, sample_msg, field,
       0);
}
