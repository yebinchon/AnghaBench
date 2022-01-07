
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 int HZ ;
 int MPC_P2 ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ checking_time ;
 scalar_t__ jiffies ;
 TYPE_1__ mpc_timer ;

__attribute__((used)) static void mpc_timer_refresh(void)
{
 mpc_timer.expires = jiffies + (MPC_P2 * HZ);
 checking_time = mpc_timer.expires;
 add_timer(&mpc_timer);
}
