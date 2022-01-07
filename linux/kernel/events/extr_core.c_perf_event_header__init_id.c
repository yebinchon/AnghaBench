
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample_data {int dummy; } ;
struct perf_event_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ sample_id_all; } ;
struct perf_event {TYPE_1__ attr; } ;


 int __perf_event_header__init_id (struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ;

void perf_event_header__init_id(struct perf_event_header *header,
    struct perf_sample_data *data,
    struct perf_event *event)
{
 if (event->attr.sample_id_all)
  __perf_event_header__init_id(header, data, event);
}
