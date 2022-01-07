
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int mutex; scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 struct snd_dice* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dice_stream_update_duplex (struct snd_dice*) ;
 int snd_dice_transaction_reinit (struct snd_dice*) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;

__attribute__((used)) static void dice_bus_reset(struct fw_unit *unit)
{
 struct snd_dice *dice = dev_get_drvdata(&unit->device);


 if (!dice->registered)
  snd_fw_schedule_registration(unit, &dice->dwork);


 snd_dice_transaction_reinit(dice);





 if (dice->registered) {
  mutex_lock(&dice->mutex);
  snd_dice_stream_update_duplex(dice);
  mutex_unlock(&dice->mutex);
 }
}
