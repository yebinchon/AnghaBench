
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int owner; } ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ TASK_TOMBSTONE ;

__attribute__((used)) static bool is_kernel_event(struct perf_event *event)
{
 return READ_ONCE(event->owner) == TASK_TOMBSTONE;
}
