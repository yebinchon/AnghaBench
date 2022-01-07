
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; int function; } ;
struct rose_neigh {TYPE_1__ ftimer; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int rose_ftimer_expiry ;
 int sysctl_rose_link_fail_timeout ;

void rose_start_ftimer(struct rose_neigh *neigh)
{
 del_timer(&neigh->ftimer);

 neigh->ftimer.function = rose_ftimer_expiry;
 neigh->ftimer.expires =
  jiffies + msecs_to_jiffies(sysctl_rose_link_fail_timeout);

 add_timer(&neigh->ftimer);
}
