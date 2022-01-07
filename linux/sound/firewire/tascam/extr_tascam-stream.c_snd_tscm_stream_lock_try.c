
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {scalar_t__ dev_lock_count; int lock; } ;


 int EBUSY ;
 int snd_tscm_stream_lock_changed (struct snd_tscm*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_tscm_stream_lock_try(struct snd_tscm *tscm)
{
 int err;

 spin_lock_irq(&tscm->lock);


 if (tscm->dev_lock_count < 0) {
  err = -EBUSY;
  goto end;
 }


 if (tscm->dev_lock_count++ == 0)
  snd_tscm_stream_lock_changed(tscm);
 err = 0;
end:
 spin_unlock_irq(&tscm->lock);
 return err;
}
