
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ idle; int idletimer; } ;
typedef TYPE_1__ ax25_cb ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void ax25_start_idletimer(ax25_cb *ax25)
{
 if (ax25->idle > 0)
  mod_timer(&ax25->idletimer, jiffies + ax25->idle);
 else
  del_timer(&ax25->idletimer);
}
