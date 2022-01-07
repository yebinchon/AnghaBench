
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {scalar_t__ dev_lock_count; int lock; } ;


 int EBUSY ;
 int motu_lock_changed (struct snd_motu*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_motu_stream_lock_try(struct snd_motu *motu)
{
 int err;

 spin_lock_irq(&motu->lock);

 if (motu->dev_lock_count < 0) {
  err = -EBUSY;
  goto out;
 }

 if (motu->dev_lock_count++ == 0)
  motu_lock_changed(motu);
 err = 0;
out:
 spin_unlock_irq(&motu->lock);
 return err;
}
