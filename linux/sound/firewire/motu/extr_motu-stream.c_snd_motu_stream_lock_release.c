
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {scalar_t__ dev_lock_count; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int motu_lock_changed (struct snd_motu*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_motu_stream_lock_release(struct snd_motu *motu)
{
 spin_lock_irq(&motu->lock);

 if (WARN_ON(motu->dev_lock_count <= 0))
  goto out;

 if (--motu->dev_lock_count == 0)
  motu_lock_changed(motu);
out:
 spin_unlock_irq(&motu->lock);
}
