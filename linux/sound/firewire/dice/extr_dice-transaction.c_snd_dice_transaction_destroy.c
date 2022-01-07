
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_address_handler {int * callback_data; } ;
struct snd_dice {struct fw_address_handler notification_handler; } ;


 int fw_core_remove_address_handler (struct fw_address_handler*) ;
 int unregister_notification_address (struct snd_dice*) ;

void snd_dice_transaction_destroy(struct snd_dice *dice)
{
 struct fw_address_handler *handler = &dice->notification_handler;

 if (handler->callback_data == ((void*)0))
  return;

 unregister_notification_address(dice);

 fw_core_remove_address_handler(handler);
 handler->callback_data = ((void*)0);
}
