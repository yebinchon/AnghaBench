
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ sample_id_all; } ;
struct perf_event {TYPE_1__ attr; } ;


 int __perf_event__output_id_sample (struct perf_output_handle*,struct perf_sample_data*) ;

void perf_event__output_id_sample(struct perf_event *event,
      struct perf_output_handle *handle,
      struct perf_sample_data *sample)
{
 if (event->attr.sample_id_all)
  __perf_event__output_id_sample(handle, sample);
}
