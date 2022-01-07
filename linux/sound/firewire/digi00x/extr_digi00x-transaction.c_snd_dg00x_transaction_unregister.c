
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * callback_data; } ;
struct snd_dg00x {TYPE_1__ async_handler; } ;


 int fw_core_remove_address_handler (TYPE_1__*) ;

void snd_dg00x_transaction_unregister(struct snd_dg00x *dg00x)
{
 if (dg00x->async_handler.callback_data == ((void*)0))
  return;

 fw_core_remove_address_handler(&dg00x->async_handler);

 dg00x->async_handler.callback_data = ((void*)0);
}
