
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int is_console; int dwork; int hwdep_wait; int lock; int mutex; int unit; } ;
struct ieee1394_device_id {scalar_t__ model_id; } ;
struct fw_unit {int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 scalar_t__ MODEL_CONSOLE ;
 int dev_set_drvdata (int *,struct snd_dg00x*) ;
 struct snd_dg00x* devm_kzalloc (int *,int,int ) ;
 int do_registration ;
 int fw_unit_get (struct fw_unit*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int snd_dg00x_probe(struct fw_unit *unit,
      const struct ieee1394_device_id *entry)
{
 struct snd_dg00x *dg00x;


 dg00x = devm_kzalloc(&unit->device, sizeof(struct snd_dg00x),
        GFP_KERNEL);
 if (!dg00x)
  return -ENOMEM;

 dg00x->unit = fw_unit_get(unit);
 dev_set_drvdata(&unit->device, dg00x);

 mutex_init(&dg00x->mutex);
 spin_lock_init(&dg00x->lock);
 init_waitqueue_head(&dg00x->hwdep_wait);

 dg00x->is_console = entry->model_id == MODEL_CONSOLE;


 INIT_DEFERRABLE_WORK(&dg00x->dwork, do_registration);
 snd_fw_schedule_registration(unit, &dg00x->dwork);

 return 0;
}
