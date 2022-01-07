
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_address_handler {int length; struct snd_dice* callback_data; int address_callback; } ;
struct snd_dice {struct fw_address_handler notification_handler; } ;


 int dice_notification ;
 int fw_core_add_address_handler (struct fw_address_handler*,int *) ;
 int fw_core_remove_address_handler (struct fw_address_handler*) ;
 int fw_high_memory_region ;
 int get_subaddrs (struct snd_dice*) ;
 int register_notification_address (struct snd_dice*,int) ;

int snd_dice_transaction_init(struct snd_dice *dice)
{
 struct fw_address_handler *handler = &dice->notification_handler;
 int err;

 err = get_subaddrs(dice);
 if (err < 0)
  return err;


 handler->length = 4;
 handler->address_callback = dice_notification;
 handler->callback_data = dice;
 err = fw_core_add_address_handler(handler, &fw_high_memory_region);
 if (err < 0) {
  handler->callback_data = ((void*)0);
  return err;
 }


 err = register_notification_address(dice, 1);
 if (err < 0) {
  fw_core_remove_address_handler(handler);
  handler->callback_data = ((void*)0);
 }

 return err;
}
