
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_format; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int ID ;
 int IDENTIFIER ;
 int PERF_FORMAT_ID ;
 int perf_evsel__reset_sample_bit (struct evsel*,int ) ;
 int perf_evsel__set_sample_bit (struct evsel*,int ) ;

void perf_evsel__set_sample_id(struct evsel *evsel,
          bool can_sample_identifier)
{
 if (can_sample_identifier) {
  perf_evsel__reset_sample_bit(evsel, ID);
  perf_evsel__set_sample_bit(evsel, IDENTIFIER);
 } else {
  perf_evsel__set_sample_bit(evsel, ID);
 }
 evsel->core.attr.read_format |= PERF_FORMAT_ID;
}
