
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int slave; } ;
struct TYPE_7__ {TYPE_1__ dama; } ;
typedef TYPE_2__ ax25_dev ;


 int ax25_ds_set_timer (TYPE_2__*) ;
 int ax25_kiss_cmd (TYPE_2__*,int,int) ;

__attribute__((used)) static void ax25_dev_dama_on(ax25_dev *ax25_dev)
{
 if (ax25_dev == ((void*)0))
  return;

 if (ax25_dev->dama.slave == 0)
  ax25_kiss_cmd(ax25_dev, 5, 1);

 ax25_dev->dama.slave = 1;
 ax25_ds_set_timer(ax25_dev);
}
