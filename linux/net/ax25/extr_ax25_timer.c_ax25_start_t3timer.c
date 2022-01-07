
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ t3; int t3timer; } ;
typedef TYPE_1__ ax25_cb ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void ax25_start_t3timer(ax25_cb *ax25)
{
 if (ax25->t3 > 0)
  mod_timer(&ax25->t3timer, jiffies + ax25->t3);
 else
  del_timer(&ax25->t3timer);
}
