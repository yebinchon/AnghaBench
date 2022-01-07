
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ax25_cb ;


 int ax25_ds_establish_data_link (int *) ;

void ax25_ds_nr_error_recovery(ax25_cb *ax25)
{
 ax25_ds_establish_data_link(ax25);
}
