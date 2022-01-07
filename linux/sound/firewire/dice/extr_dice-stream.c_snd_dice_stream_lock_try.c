
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {scalar_t__ dev_lock_count; int lock; } ;


 int EBUSY ;
 int dice_lock_changed (struct snd_dice*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_dice_stream_lock_try(struct snd_dice *dice)
{
 int err;

 spin_lock_irq(&dice->lock);

 if (dice->dev_lock_count < 0) {
  err = -EBUSY;
  goto out;
 }

 if (dice->dev_lock_count++ == 0)
  dice_lock_changed(dice);
 err = 0;
out:
 spin_unlock_irq(&dice->lock);
 return err;
}
