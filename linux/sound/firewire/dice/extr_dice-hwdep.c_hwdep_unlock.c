
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dev_lock_count; int lock; } ;


 int EBADFD ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hwdep_unlock(struct snd_dice *dice)
{
 int err;

 spin_lock_irq(&dice->lock);

 if (dice->dev_lock_count == -1) {
  dice->dev_lock_count = 0;
  err = 0;
 } else {
  err = -EBADFD;
 }

 spin_unlock_irq(&dice->lock);

 return err;
}
