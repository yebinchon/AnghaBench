
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {scalar_t__ dev_lock_count; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int snd_ff_stream_lock_changed (struct snd_ff*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_ff_stream_lock_release(struct snd_ff *ff)
{
 spin_lock_irq(&ff->lock);

 if (WARN_ON(ff->dev_lock_count <= 0))
  goto end;
 if (--ff->dev_lock_count == 0)
  snd_ff_stream_lock_changed(ff);
end:
 spin_unlock_irq(&ff->lock);
}
