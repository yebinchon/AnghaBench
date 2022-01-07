
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t1timer; } ;
typedef TYPE_1__ ax25_cb ;


 int timer_pending (int *) ;

int ax25_t1timer_running(ax25_cb *ax25)
{
 return timer_pending(&ax25->t1timer);
}
