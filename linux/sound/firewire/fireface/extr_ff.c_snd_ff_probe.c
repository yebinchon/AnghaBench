
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff_spec {int dummy; } ;
struct snd_ff {int dwork; struct snd_ff_spec const* spec; int hwdep_wait; int lock; int mutex; int unit; } ;
struct ieee1394_device_id {scalar_t__ driver_data; } ;
struct fw_unit {int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int dev_set_drvdata (int *,struct snd_ff*) ;
 struct snd_ff* devm_kzalloc (int *,int,int ) ;
 int do_registration ;
 int fw_unit_get (struct fw_unit*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int snd_ff_probe(struct fw_unit *unit,
      const struct ieee1394_device_id *entry)
{
 struct snd_ff *ff;

 ff = devm_kzalloc(&unit->device, sizeof(struct snd_ff), GFP_KERNEL);
 if (!ff)
  return -ENOMEM;
 ff->unit = fw_unit_get(unit);
 dev_set_drvdata(&unit->device, ff);

 mutex_init(&ff->mutex);
 spin_lock_init(&ff->lock);
 init_waitqueue_head(&ff->hwdep_wait);

 ff->spec = (const struct snd_ff_spec *)entry->driver_data;


 INIT_DEFERRABLE_WORK(&ff->dwork, do_registration);
 snd_fw_schedule_registration(unit, &ff->dwork);

 return 0;
}
