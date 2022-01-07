
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sugov_policy {int limits_changed; int need_freq_update; scalar_t__ last_freq_update_time; scalar_t__ freq_update_delay_ns; TYPE_1__* policy; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {scalar_t__ fast_switch_enabled; } ;


 int cpufreq_this_cpu_can_update (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool sugov_should_update_freq(struct sugov_policy *sg_policy, u64 time)
{
 s64 delta_ns;
 if (sg_policy->policy->fast_switch_enabled &&
     !cpufreq_this_cpu_can_update(sg_policy->policy))
  return 0;

 if (unlikely(sg_policy->limits_changed)) {
  sg_policy->limits_changed = 0;
  sg_policy->need_freq_update = 1;
  return 1;
 }

 delta_ns = time - sg_policy->last_freq_update_time;

 return delta_ns >= sg_policy->freq_update_delay_ns;
}
