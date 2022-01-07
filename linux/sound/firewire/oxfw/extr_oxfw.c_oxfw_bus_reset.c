
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_oxfw {TYPE_1__* entry; int mutex; scalar_t__ registered; int unit; int dwork; } ;
struct fw_unit {int device; } ;
struct TYPE_2__ {scalar_t__ vendor_id; } ;


 scalar_t__ OUI_STANTON ;
 struct snd_oxfw* dev_get_drvdata (int *) ;
 int fcp_bus_reset (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int snd_oxfw_scs1x_update (struct snd_oxfw*) ;
 int snd_oxfw_stream_update_duplex (struct snd_oxfw*) ;

__attribute__((used)) static void oxfw_bus_reset(struct fw_unit *unit)
{
 struct snd_oxfw *oxfw = dev_get_drvdata(&unit->device);

 if (!oxfw->registered)
  snd_fw_schedule_registration(unit, &oxfw->dwork);

 fcp_bus_reset(oxfw->unit);

 if (oxfw->registered) {
  mutex_lock(&oxfw->mutex);
  snd_oxfw_stream_update_duplex(oxfw);
  mutex_unlock(&oxfw->mutex);

  if (oxfw->entry->vendor_id == OUI_STANTON)
   snd_oxfw_scs1x_update(oxfw);
 }
}
