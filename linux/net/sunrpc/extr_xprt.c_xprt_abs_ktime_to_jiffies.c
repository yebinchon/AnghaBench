
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;
typedef scalar_t__ ktime_t ;


 unsigned long jiffies ;
 scalar_t__ ktime_get () ;
 int ktime_to_ns (scalar_t__) ;
 scalar_t__ likely (int) ;
 unsigned long nsecs_to_jiffies (int ) ;

__attribute__((used)) static unsigned long xprt_abs_ktime_to_jiffies(ktime_t abstime)
{
 s64 delta = ktime_to_ns(ktime_get() - abstime);
 return likely(delta >= 0) ?
  jiffies - nsecs_to_jiffies(delta) :
  jiffies + nsecs_to_jiffies(-delta);
}
