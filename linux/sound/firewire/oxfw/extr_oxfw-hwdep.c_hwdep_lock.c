
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int dev_lock_count; int lock; } ;


 int EBUSY ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hwdep_lock(struct snd_oxfw *oxfw)
{
 int err;

 spin_lock_irq(&oxfw->lock);

 if (oxfw->dev_lock_count == 0) {
  oxfw->dev_lock_count = -1;
  err = 0;
 } else {
  err = -EBUSY;
 }

 spin_unlock_irq(&oxfw->lock);

 return err;
}
