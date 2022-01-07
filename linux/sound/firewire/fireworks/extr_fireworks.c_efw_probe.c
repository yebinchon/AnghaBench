
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dwork; int hwdep_wait; int lock; int mutex; int unit; } ;
struct ieee1394_device_id {int dummy; } ;
struct fw_unit {int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int dev_set_drvdata (int *,struct snd_efw*) ;
 struct snd_efw* devm_kzalloc (int *,int,int ) ;
 int do_registration ;
 int fw_unit_get (struct fw_unit*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
efw_probe(struct fw_unit *unit, const struct ieee1394_device_id *entry)
{
 struct snd_efw *efw;

 efw = devm_kzalloc(&unit->device, sizeof(struct snd_efw), GFP_KERNEL);
 if (efw == ((void*)0))
  return -ENOMEM;
 efw->unit = fw_unit_get(unit);
 dev_set_drvdata(&unit->device, efw);

 mutex_init(&efw->mutex);
 spin_lock_init(&efw->lock);
 init_waitqueue_head(&efw->hwdep_wait);


 INIT_DEFERRABLE_WORK(&efw->dwork, do_registration);
 snd_fw_schedule_registration(unit, &efw->dwork);

 return 0;
}
