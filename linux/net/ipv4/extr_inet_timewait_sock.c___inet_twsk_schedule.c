
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet_timewait_sock {int tw_kill; int tw_timer; TYPE_1__* tw_dr; } ;
struct TYPE_2__ {int tw_count; } ;


 int BUG_ON (int ) ;
 int HZ ;
 int atomic_inc (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mod_timer_pending (int *,scalar_t__) ;

void __inet_twsk_schedule(struct inet_timewait_sock *tw, int timeo, bool rearm)
{
 tw->tw_kill = timeo <= 4*HZ;
 if (!rearm) {
  BUG_ON(mod_timer(&tw->tw_timer, jiffies + timeo));
  atomic_inc(&tw->tw_dr->tw_count);
 } else {
  mod_timer_pending(&tw->tw_timer, jiffies + timeo);
 }
}
