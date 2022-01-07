
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ task; scalar_t__ mmap_data; scalar_t__ mmap2; scalar_t__ mmap; scalar_t__ comm; } ;
struct perf_event {TYPE_1__ attr; } ;



__attribute__((used)) static int perf_event_task_match(struct perf_event *event)
{
 return event->attr.comm || event->attr.mmap ||
        event->attr.mmap2 || event->attr.mmap_data ||
        event->attr.task;
}
