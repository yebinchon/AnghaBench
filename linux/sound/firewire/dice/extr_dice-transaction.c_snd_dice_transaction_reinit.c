
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_address_handler {int * callback_data; } ;
struct snd_dice {struct fw_address_handler notification_handler; } ;


 int EINVAL ;
 int register_notification_address (struct snd_dice*,int) ;

int snd_dice_transaction_reinit(struct snd_dice *dice)
{
 struct fw_address_handler *handler = &dice->notification_handler;

 if (handler->callback_data == ((void*)0))
  return -EINVAL;

 return register_notification_address(dice, 0);
}
