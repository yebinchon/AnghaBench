
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_event {int child_count; int count; } ;


 scalar_t__ atomic64_read (int *) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static inline u64 perf_event_count(struct perf_event *event)
{
 return local64_read(&event->count) + atomic64_read(&event->child_count);
}
