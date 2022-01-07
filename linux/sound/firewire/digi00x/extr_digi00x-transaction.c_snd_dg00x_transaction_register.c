
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; struct snd_dg00x* callback_data; int address_callback; } ;
struct snd_dg00x {TYPE_1__ async_handler; } ;
struct fw_address_region {int start; int end; } ;


 int fw_core_add_address_handler (TYPE_1__*,struct fw_address_region const*) ;
 int handle_message ;
 int snd_dg00x_transaction_reregister (struct snd_dg00x*) ;
 int snd_dg00x_transaction_unregister (struct snd_dg00x*) ;

int snd_dg00x_transaction_register(struct snd_dg00x *dg00x)
{
 static const struct fw_address_region resp_register_region = {
  .start = 0xffffe0000000ull,
  .end = 0xffffe000ffffull,
 };
 int err;

 dg00x->async_handler.length = 4;
 dg00x->async_handler.address_callback = handle_message;
 dg00x->async_handler.callback_data = dg00x;

 err = fw_core_add_address_handler(&dg00x->async_handler,
       &resp_register_region);
 if (err < 0)
  return err;

 err = snd_dg00x_transaction_reregister(dg00x);
 if (err < 0)
  snd_dg00x_transaction_unregister(dg00x);

 return err;
}
