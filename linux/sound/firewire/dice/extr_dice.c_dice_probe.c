
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dwork; int hwdep_wait; int clock_accepted; int mutex; int lock; scalar_t__ detect_formats; int unit; } ;
struct ieee1394_device_id {scalar_t__ vendor_id; scalar_t__ driver_data; } ;
struct fw_unit {int device; } ;
typedef scalar_t__ snd_dice_detect_formats_t ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 scalar_t__ OUI_SSL ;
 int check_dice_category (struct fw_unit*) ;
 int dev_set_drvdata (int *,struct snd_dice*) ;
 struct snd_dice* devm_kzalloc (int *,int,int ) ;
 int do_registration ;
 int fw_unit_get (struct fw_unit*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 scalar_t__ snd_dice_stream_detect_current_formats ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dice_probe(struct fw_unit *unit,
        const struct ieee1394_device_id *entry)
{
 struct snd_dice *dice;
 int err;

 if (!entry->driver_data && entry->vendor_id != OUI_SSL) {
  err = check_dice_category(unit);
  if (err < 0)
   return -ENODEV;
 }


 dice = devm_kzalloc(&unit->device, sizeof(struct snd_dice), GFP_KERNEL);
 if (!dice)
  return -ENOMEM;
 dice->unit = fw_unit_get(unit);
 dev_set_drvdata(&unit->device, dice);

 if (!entry->driver_data) {
  dice->detect_formats = snd_dice_stream_detect_current_formats;
 } else {
  dice->detect_formats =
    (snd_dice_detect_formats_t)entry->driver_data;
 }

 spin_lock_init(&dice->lock);
 mutex_init(&dice->mutex);
 init_completion(&dice->clock_accepted);
 init_waitqueue_head(&dice->hwdep_wait);


 INIT_DEFERRABLE_WORK(&dice->dwork, do_registration);
 snd_fw_schedule_registration(unit, &dice->dwork);

 return 0;
}
