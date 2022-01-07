
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int dev_lock_count; int lock; } ;


 int EBUSY ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hwdep_lock(struct snd_dg00x *dg00x)
{
 int err;

 spin_lock_irq(&dg00x->lock);

 if (dg00x->dev_lock_count == 0) {
  dg00x->dev_lock_count = -1;
  err = 0;
 } else {
  err = -EBUSY;
 }

 spin_unlock_irq(&dg00x->lock);

 return err;
}
