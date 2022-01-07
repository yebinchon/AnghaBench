
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expires; } ;
struct ip_vs_conn {TYPE_1__ timer; } ;


 int jiffies ;
 int mod_timer_pending (TYPE_1__*,int ) ;
 scalar_t__ time_after (int ,int ) ;
 scalar_t__ timer_pending (TYPE_1__*) ;

void ip_vs_conn_expire_now(struct ip_vs_conn *cp)
{



 if (timer_pending(&cp->timer) &&
     time_after(cp->timer.expires, jiffies))
  mod_timer_pending(&cp->timer, jiffies);
}
