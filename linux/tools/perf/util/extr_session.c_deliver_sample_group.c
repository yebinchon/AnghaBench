
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
typedef size_t u64 ;
struct perf_tool {int dummy; } ;
struct TYPE_3__ {size_t nr; int * values; } ;
struct TYPE_4__ {TYPE_1__ group; } ;
struct perf_sample {TYPE_2__ read; } ;
struct machine {int dummy; } ;
struct evlist {int dummy; } ;


 int EINVAL ;
 int deliver_sample_value (struct evlist*,struct perf_tool*,union perf_event*,struct perf_sample*,int *,struct machine*) ;

__attribute__((used)) static int deliver_sample_group(struct evlist *evlist,
    struct perf_tool *tool,
    union perf_event *event,
    struct perf_sample *sample,
    struct machine *machine)
{
 int ret = -EINVAL;
 u64 i;

 for (i = 0; i < sample->read.group.nr; i++) {
  ret = deliver_sample_value(evlist, tool, event, sample,
        &sample->read.group.values[i],
        machine);
  if (ret)
   break;
 }

 return ret;
}
