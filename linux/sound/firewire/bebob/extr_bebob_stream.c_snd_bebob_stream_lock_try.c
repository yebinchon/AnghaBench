
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {scalar_t__ dev_lock_count; int lock; } ;


 int EBUSY ;
 int snd_bebob_stream_lock_changed (struct snd_bebob*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_bebob_stream_lock_try(struct snd_bebob *bebob)
{
 int err;

 spin_lock_irq(&bebob->lock);


 if (bebob->dev_lock_count < 0) {
  err = -EBUSY;
  goto end;
 }


 if (bebob->dev_lock_count++ == 0)
  snd_bebob_stream_lock_changed(bebob);
 err = 0;
end:
 spin_unlock_irq(&bebob->lock);
 return err;
}
