
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {scalar_t__ dev_lock_count; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int snd_tscm_stream_lock_changed (struct snd_tscm*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_tscm_stream_lock_release(struct snd_tscm *tscm)
{
 spin_lock_irq(&tscm->lock);

 if (WARN_ON(tscm->dev_lock_count <= 0))
  goto end;
 if (--tscm->dev_lock_count == 0)
  snd_tscm_stream_lock_changed(tscm);
end:
 spin_unlock_irq(&tscm->lock);
}
