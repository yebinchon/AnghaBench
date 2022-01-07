
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idletimer; } ;
typedef TYPE_1__ ax25_cb ;


 int del_timer (int *) ;

void ax25_stop_idletimer(ax25_cb *ax25)
{
 del_timer(&ax25->idletimer);
}
