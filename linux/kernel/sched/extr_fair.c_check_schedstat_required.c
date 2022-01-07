
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk_deferred_once (char*) ;
 scalar_t__ schedstat_enabled () ;
 scalar_t__ trace_sched_stat_blocked_enabled () ;
 scalar_t__ trace_sched_stat_iowait_enabled () ;
 scalar_t__ trace_sched_stat_runtime_enabled () ;
 scalar_t__ trace_sched_stat_sleep_enabled () ;
 scalar_t__ trace_sched_stat_wait_enabled () ;

__attribute__((used)) static inline void check_schedstat_required(void)
{
}
