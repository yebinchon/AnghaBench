
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_callchain_entry {int dummy; } ;
typedef int __u64 ;


 int sysctl_perf_event_max_contexts_per_stack ;
 int sysctl_perf_event_max_stack ;

__attribute__((used)) static inline size_t perf_callchain_entry__sizeof(void)
{
 return (sizeof(struct perf_callchain_entry) +
  sizeof(__u64) * (sysctl_perf_event_max_stack +
     sysctl_perf_event_max_contexts_per_stack));
}
