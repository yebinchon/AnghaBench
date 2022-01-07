
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sugov_policy {unsigned int next_freq; int last_freq_update_time; } ;



__attribute__((used)) static bool sugov_update_next_freq(struct sugov_policy *sg_policy, u64 time,
       unsigned int next_freq)
{
 if (sg_policy->next_freq == next_freq)
  return 0;

 sg_policy->next_freq = next_freq;
 sg_policy->last_freq_update_time = time;

 return 1;
}
