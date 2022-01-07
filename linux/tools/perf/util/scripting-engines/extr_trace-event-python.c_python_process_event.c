
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct tables {int dbe; int db_export_mode; } ;
struct perf_sample {int dummy; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct addr_location {int dummy; } ;



 int db_export__sample (int *,union perf_event*,struct perf_sample*,struct evsel*,struct addr_location*) ;
 int python_process_general_event (struct perf_sample*,struct evsel*,struct addr_location*) ;
 int python_process_tracepoint (struct perf_sample*,struct evsel*,struct addr_location*) ;
 struct tables tables_global ;

__attribute__((used)) static void python_process_event(union perf_event *event,
     struct perf_sample *sample,
     struct evsel *evsel,
     struct addr_location *al)
{
 struct tables *tables = &tables_global;

 switch (evsel->core.attr.type) {
 case 128:
  python_process_tracepoint(sample, evsel, al);
  break;

 default:
  if (tables->db_export_mode)
   db_export__sample(&tables->dbe, event, sample, evsel, al);
  else
   python_process_general_event(sample, evsel, al);
 }
}
