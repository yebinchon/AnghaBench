
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int mutex; scalar_t__ registered; int unit; int dwork; } ;
struct fw_unit {int device; } ;


 struct snd_efw* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_efw_stream_update_duplex (struct snd_efw*) ;
 int snd_efw_transaction_bus_reset (int ) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;

__attribute__((used)) static void efw_update(struct fw_unit *unit)
{
 struct snd_efw *efw = dev_get_drvdata(&unit->device);


 if (!efw->registered)
  snd_fw_schedule_registration(unit, &efw->dwork);

 snd_efw_transaction_bus_reset(efw->unit);





 if (efw->registered) {
  mutex_lock(&efw->mutex);
  snd_efw_stream_update_duplex(efw);
  mutex_unlock(&efw->mutex);
 }
}
