
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
union perf_event {TYPE_1__ header; } ;
struct ordered_events {int cur_alloc_size; } ;


 int free (union perf_event*) ;

__attribute__((used)) static void __free_dup_event(struct ordered_events *oe, union perf_event *event)
{
 if (event) {
  oe->cur_alloc_size -= event->header.size;
  free(event);
 }
}
