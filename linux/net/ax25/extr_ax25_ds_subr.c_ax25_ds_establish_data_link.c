
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ n2count; int condition; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COND_DAMA_MODE ;
 int ax25_calculate_t1 (TYPE_1__*) ;
 int ax25_start_t1timer (TYPE_1__*) ;
 int ax25_start_t3timer (TYPE_1__*) ;
 int ax25_stop_t2timer (TYPE_1__*) ;

void ax25_ds_establish_data_link(ax25_cb *ax25)
{
 ax25->condition &= AX25_COND_DAMA_MODE;
 ax25->n2count = 0;
 ax25_calculate_t1(ax25);
 ax25_start_t1timer(ax25);
 ax25_stop_t2timer(ax25);
 ax25_start_t3timer(ax25);
}
