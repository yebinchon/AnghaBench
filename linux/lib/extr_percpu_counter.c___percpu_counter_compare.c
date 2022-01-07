
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_counter {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int s32 ;


 int abs (scalar_t__) ;
 int num_online_cpus () ;
 scalar_t__ percpu_counter_read (struct percpu_counter*) ;
 scalar_t__ percpu_counter_sum (struct percpu_counter*) ;

int __percpu_counter_compare(struct percpu_counter *fbc, s64 rhs, s32 batch)
{
 s64 count;

 count = percpu_counter_read(fbc);

 if (abs(count - rhs) > (batch * num_online_cpus())) {
  if (count > rhs)
   return 1;
  else
   return -1;
 }

 count = percpu_counter_sum(fbc);
 if (count > rhs)
  return 1;
 else if (count < rhs)
  return -1;
 else
  return 0;
}
