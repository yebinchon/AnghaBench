
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int dev_lock_count; int lock; } ;


 int EBADFD ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hwdep_unlock(struct snd_tscm *tscm)
{
 int err;

 spin_lock_irq(&tscm->lock);

 if (tscm->dev_lock_count == -1) {
  tscm->dev_lock_count = 0;
  err = 0;
 } else {
  err = -EBADFD;
 }

 spin_unlock_irq(&tscm->lock);

 return err;
}
