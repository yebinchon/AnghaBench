
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {scalar_t__ dev_lock_count; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int snd_dg00x_stream_lock_changed (struct snd_dg00x*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_dg00x_stream_lock_release(struct snd_dg00x *dg00x)
{
 spin_lock_irq(&dg00x->lock);

 if (WARN_ON(dg00x->dev_lock_count <= 0))
  goto end;
 if (--dg00x->dev_lock_count == 0)
  snd_dg00x_stream_lock_changed(dg00x);
end:
 spin_unlock_irq(&dg00x->lock);
}
