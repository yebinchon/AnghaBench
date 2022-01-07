
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex_waiter {int dummy; } ;


 int WARN (int,char*) ;

__attribute__((used)) static inline void rt_mutex_print_deadlock(struct rt_mutex_waiter *w)
{
 WARN(1, "rtmutex deadlock detected\n");
}
