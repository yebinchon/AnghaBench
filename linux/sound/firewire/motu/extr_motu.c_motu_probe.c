
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu_spec {int dummy; } ;
struct snd_motu {int dwork; int hwdep_wait; int lock; int mutex; struct snd_motu_spec const* spec; int unit; } ;
struct ieee1394_device_id {scalar_t__ driver_data; } ;
struct fw_unit {int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int dev_set_drvdata (int *,struct snd_motu*) ;
 struct snd_motu* devm_kzalloc (int *,int,int ) ;
 int do_registration ;
 int fw_unit_get (struct fw_unit*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int motu_probe(struct fw_unit *unit,
        const struct ieee1394_device_id *entry)
{
 struct snd_motu *motu;


 motu = devm_kzalloc(&unit->device, sizeof(struct snd_motu), GFP_KERNEL);
 if (!motu)
  return -ENOMEM;
 motu->unit = fw_unit_get(unit);
 dev_set_drvdata(&unit->device, motu);

 motu->spec = (const struct snd_motu_spec *)entry->driver_data;
 mutex_init(&motu->mutex);
 spin_lock_init(&motu->lock);
 init_waitqueue_head(&motu->hwdep_wait);


 INIT_DEFERRABLE_WORK(&motu->dwork, do_registration);
 snd_fw_schedule_registration(unit, &motu->dwork);

 return 0;
}
