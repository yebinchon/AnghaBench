
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_event_paranoid_check (int) ;

__attribute__((used)) static bool perf_event_can_profile_kernel(void)
{
 return perf_event_paranoid_check(1);
}
