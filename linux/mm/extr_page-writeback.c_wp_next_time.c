
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VM_COMPLETIONS_PERIOD_LEN ;

__attribute__((used)) static unsigned long wp_next_time(unsigned long cur_time)
{
 cur_time += VM_COMPLETIONS_PERIOD_LEN;

 if (!cur_time)
  return 1;
 return cur_time;
}
