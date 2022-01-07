
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex_waiter {int dummy; } ;
typedef enum rtmutex_chainwalk { ____Placeholder_rtmutex_chainwalk } rtmutex_chainwalk ;


 int RT_MUTEX_FULL_CHAINWALK ;

__attribute__((used)) static inline bool debug_rt_mutex_detect_deadlock(struct rt_mutex_waiter *w,
        enum rtmutex_chainwalk walk)
{
 return walk == RT_MUTEX_FULL_CHAINWALK;
}
