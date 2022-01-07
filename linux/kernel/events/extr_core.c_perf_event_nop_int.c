
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;



__attribute__((used)) static int perf_event_nop_int(struct perf_event *event, u64 value)
{
 return 0;
}
