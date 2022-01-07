
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_bebob_spec {int dummy; } ;
struct snd_bebob {int unit; int dwork; int hwdep_wait; int lock; int mutex; struct snd_bebob_spec const* spec; struct ieee1394_device_id const* entry; } ;
struct ieee1394_device_id {scalar_t__ vendor_id; scalar_t__ model_id; scalar_t__ driver_data; } ;
struct fw_unit {int device; } ;
struct TYPE_2__ {int card; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 scalar_t__ MODEL_FOCUSRITE_SAFFIRE_BOTH ;
 scalar_t__ MODEL_MAUDIO_AUDIOPHILE_BOTH ;
 scalar_t__ MODEL_MAUDIO_FW1814 ;
 scalar_t__ MODEL_MAUDIO_PROJECTMIX ;
 scalar_t__ VEN_FOCUSRITE ;
 scalar_t__ VEN_MAUDIO1 ;
 scalar_t__ VEN_MAUDIO2 ;
 int check_audiophile_booted (struct fw_unit*) ;
 int dev_set_drvdata (int *,struct snd_bebob*) ;
 struct snd_bebob* devm_kzalloc (int *,int,int ) ;
 int do_registration ;
 TYPE_1__* fw_parent_device (int ) ;
 int fw_schedule_bus_reset (int ,int,int) ;
 int fw_unit_get (struct fw_unit*) ;
 struct snd_bebob_spec* get_saffire_spec (struct fw_unit*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snd_bebob_maudio_load_firmware (struct fw_unit*) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
bebob_probe(struct fw_unit *unit, const struct ieee1394_device_id *entry)
{
 struct snd_bebob *bebob;
 const struct snd_bebob_spec *spec;

 if (entry->vendor_id == VEN_FOCUSRITE &&
     entry->model_id == MODEL_FOCUSRITE_SAFFIRE_BOTH)
  spec = get_saffire_spec(unit);
 else if (entry->vendor_id == VEN_MAUDIO1 &&
   entry->model_id == MODEL_MAUDIO_AUDIOPHILE_BOTH &&
   !check_audiophile_booted(unit))
  spec = ((void*)0);
 else
  spec = (const struct snd_bebob_spec *)entry->driver_data;

 if (spec == ((void*)0)) {
  if (entry->vendor_id == VEN_MAUDIO1 ||
      entry->vendor_id == VEN_MAUDIO2)
   return snd_bebob_maudio_load_firmware(unit);
  else
   return -ENODEV;
 }


 bebob = devm_kzalloc(&unit->device, sizeof(struct snd_bebob),
        GFP_KERNEL);
 if (!bebob)
  return -ENOMEM;
 bebob->unit = fw_unit_get(unit);
 dev_set_drvdata(&unit->device, bebob);

 bebob->entry = entry;
 bebob->spec = spec;
 mutex_init(&bebob->mutex);
 spin_lock_init(&bebob->lock);
 init_waitqueue_head(&bebob->hwdep_wait);


 INIT_DEFERRABLE_WORK(&bebob->dwork, do_registration);

 if (entry->vendor_id != VEN_MAUDIO1 ||
     (entry->model_id != MODEL_MAUDIO_FW1814 &&
      entry->model_id != MODEL_MAUDIO_PROJECTMIX)) {
  snd_fw_schedule_registration(unit, &bebob->dwork);
 } else {
  fw_schedule_bus_reset(fw_parent_device(bebob->unit)->card,
          0, 1);
 }

 return 0;
}
