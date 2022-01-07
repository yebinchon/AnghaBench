
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ slave; } ;
struct TYPE_8__ {TYPE_1__ dama; } ;
typedef TYPE_2__ ax25_dev ;


 int ax25_check_dama_slave (TYPE_2__*) ;
 int ax25_ds_del_timer (TYPE_2__*) ;
 int ax25_kiss_cmd (TYPE_2__*,int,int ) ;

void ax25_dev_dama_off(ax25_dev *ax25_dev)
{
 if (ax25_dev == ((void*)0))
  return;

 if (ax25_dev->dama.slave && !ax25_check_dama_slave(ax25_dev)) {
  ax25_kiss_cmd(ax25_dev, 5, 0);
  ax25_dev->dama.slave = 0;
  ax25_ds_del_timer(ax25_dev);
 }
}
