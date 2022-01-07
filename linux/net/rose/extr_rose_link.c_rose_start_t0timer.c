
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; int function; } ;
struct rose_neigh {TYPE_1__ t0timer; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int rose_t0timer_expiry ;
 int sysctl_rose_restart_request_timeout ;

__attribute__((used)) static void rose_start_t0timer(struct rose_neigh *neigh)
{
 del_timer(&neigh->t0timer);

 neigh->t0timer.function = rose_t0timer_expiry;
 neigh->t0timer.expires =
  jiffies + msecs_to_jiffies(sysctl_rose_restart_request_timeout);

 add_timer(&neigh->t0timer);
}
