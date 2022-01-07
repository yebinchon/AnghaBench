
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ backoff; scalar_t__ n2count; int rtt; int t1; int t1timer; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_T1CLAMPHI ;
 int AX25_T1CLAMPLO ;
 int ax25_display_timer (int *) ;
 scalar_t__ ax25_t1timer_running (TYPE_1__*) ;

void ax25_calculate_rtt(ax25_cb *ax25)
{
 if (ax25->backoff == 0)
  return;

 if (ax25_t1timer_running(ax25) && ax25->n2count == 0)
  ax25->rtt = (9 * ax25->rtt + ax25->t1 - ax25_display_timer(&ax25->t1timer)) / 10;

 if (ax25->rtt < AX25_T1CLAMPLO)
  ax25->rtt = AX25_T1CLAMPLO;

 if (ax25->rtt > AX25_T1CLAMPHI)
  ax25->rtt = AX25_T1CLAMPHI;
}
