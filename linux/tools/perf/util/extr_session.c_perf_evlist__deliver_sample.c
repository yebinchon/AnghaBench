
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct perf_tool {int (* sample ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct evsel*,struct machine*) ;} ;
struct TYPE_4__ {int one; } ;
struct perf_sample {TYPE_1__ read; } ;
struct machine {int dummy; } ;
struct TYPE_5__ {int sample_type; int read_format; } ;
struct TYPE_6__ {TYPE_2__ attr; } ;
struct evsel {TYPE_3__ core; } ;
struct evlist {int dummy; } ;


 int PERF_FORMAT_GROUP ;
 int PERF_SAMPLE_READ ;
 int deliver_sample_group (struct evlist*,struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int deliver_sample_value (struct evlist*,struct perf_tool*,union perf_event*,struct perf_sample*,int *,struct machine*) ;
 int stub1 (struct perf_tool*,union perf_event*,struct perf_sample*,struct evsel*,struct machine*) ;

__attribute__((used)) static int
 perf_evlist__deliver_sample(struct evlist *evlist,
        struct perf_tool *tool,
        union perf_event *event,
        struct perf_sample *sample,
        struct evsel *evsel,
        struct machine *machine)
{

 u64 sample_type = evsel->core.attr.sample_type;
 u64 read_format = evsel->core.attr.read_format;


 if (!(sample_type & PERF_SAMPLE_READ))
  return tool->sample(tool, event, sample, evsel, machine);


 if (read_format & PERF_FORMAT_GROUP)
  return deliver_sample_group(evlist, tool, event, sample,
         machine);
 else
  return deliver_sample_value(evlist, tool, event, sample,
         &sample->read.one, machine);
}
