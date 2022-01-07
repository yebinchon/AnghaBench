
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int dwork; int hwdep_wait; int lock; int mutex; struct ieee1394_device_id const* entry; int unit; } ;
struct ieee1394_device_id {scalar_t__ vendor_id; } ;
struct fw_unit {int device; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 scalar_t__ VENDOR_LOUD ;
 int detect_loud_models (struct fw_unit*) ;
 int dev_set_drvdata (int *,struct snd_oxfw*) ;
 struct snd_oxfw* devm_kzalloc (int *,int,int ) ;
 int do_registration ;
 int fw_unit_get (struct fw_unit*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int oxfw_probe(struct fw_unit *unit,
        const struct ieee1394_device_id *entry)
{
 struct snd_oxfw *oxfw;

 if (entry->vendor_id == VENDOR_LOUD && !detect_loud_models(unit))
  return -ENODEV;


 oxfw = devm_kzalloc(&unit->device, sizeof(struct snd_oxfw), GFP_KERNEL);
 if (!oxfw)
  return -ENOMEM;
 oxfw->unit = fw_unit_get(unit);
 dev_set_drvdata(&unit->device, oxfw);

 oxfw->entry = entry;
 mutex_init(&oxfw->mutex);
 spin_lock_init(&oxfw->lock);
 init_waitqueue_head(&oxfw->hwdep_wait);


 INIT_DEFERRABLE_WORK(&oxfw->dwork, do_registration);
 snd_fw_schedule_registration(unit, &oxfw->dwork);

 return 0;
}
