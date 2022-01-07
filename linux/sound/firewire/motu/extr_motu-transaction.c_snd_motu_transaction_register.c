
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * address_callback; struct snd_motu* callback_data; } ;
struct snd_motu {TYPE_1__ async_handler; } ;
struct fw_address_region {int start; int end; } ;


 int fw_core_add_address_handler (TYPE_1__*,struct fw_address_region const*) ;
 int fw_core_remove_address_handler (TYPE_1__*) ;
 int * handle_message ;
 int snd_motu_transaction_reregister (struct snd_motu*) ;

int snd_motu_transaction_register(struct snd_motu *motu)
{
 static const struct fw_address_region resp_register_region = {
  .start = 0xffffe0000000ull,
  .end = 0xffffe000ffffull,
 };
 int err;


 motu->async_handler.length = 4;
 motu->async_handler.address_callback = handle_message;
 motu->async_handler.callback_data = motu;

 err = fw_core_add_address_handler(&motu->async_handler,
       &resp_register_region);
 if (err < 0)
  return err;

 err = snd_motu_transaction_reregister(motu);
 if (err < 0) {
  fw_core_remove_address_handler(&motu->async_handler);
  motu->async_handler.address_callback = ((void*)0);
 }

 return err;
}
