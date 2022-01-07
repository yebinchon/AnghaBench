
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {scalar_t__ dev_lock_count; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int dice_lock_changed (struct snd_dice*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_dice_stream_lock_release(struct snd_dice *dice)
{
 spin_lock_irq(&dice->lock);

 if (WARN_ON(dice->dev_lock_count <= 0))
  goto out;

 if (--dice->dev_lock_count == 0)
  dice_lock_changed(dice);
out:
 spin_unlock_irq(&dice->lock);
}
