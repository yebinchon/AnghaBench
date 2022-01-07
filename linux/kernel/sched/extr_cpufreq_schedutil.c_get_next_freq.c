
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sugov_policy {unsigned int cached_raw_freq; int need_freq_update; unsigned int next_freq; struct cpufreq_policy* policy; } ;
struct TYPE_2__ {unsigned int max_freq; } ;
struct cpufreq_policy {unsigned int cur; TYPE_1__ cpuinfo; } ;


 scalar_t__ arch_scale_freq_invariant () ;
 unsigned int cpufreq_driver_resolve_freq (struct cpufreq_policy*,unsigned int) ;
 unsigned int map_util_freq (unsigned long,unsigned int,unsigned long) ;

__attribute__((used)) static unsigned int get_next_freq(struct sugov_policy *sg_policy,
      unsigned long util, unsigned long max)
{
 struct cpufreq_policy *policy = sg_policy->policy;
 unsigned int freq = arch_scale_freq_invariant() ?
    policy->cpuinfo.max_freq : policy->cur;

 freq = map_util_freq(util, freq, max);

 if (freq == sg_policy->cached_raw_freq && !sg_policy->need_freq_update)
  return sg_policy->next_freq;

 sg_policy->need_freq_update = 0;
 sg_policy->cached_raw_freq = freq;
 return cpufreq_driver_resolve_freq(policy, freq);
}
