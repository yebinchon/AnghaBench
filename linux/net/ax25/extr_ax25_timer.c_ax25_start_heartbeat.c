
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
typedef TYPE_1__ ax25_cb ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void ax25_start_heartbeat(ax25_cb *ax25)
{
 mod_timer(&ax25->timer, jiffies + 5 * HZ);
}
