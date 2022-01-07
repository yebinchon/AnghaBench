
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;
typedef int u64 ;
struct perf_sample {int dummy; } ;


 int perf_event__sample_event_size (struct perf_sample*,int ,int ) ;
 int perf_event__synthesize_sample (union perf_event*,int ,int ,struct perf_sample*) ;

__attribute__((used)) static int cs_etm__inject_event(union perf_event *event,
          struct perf_sample *sample, u64 type)
{
 event->header.size = perf_event__sample_event_size(sample, type, 0);
 return perf_event__synthesize_sample(event, type, 0, sample);
}
