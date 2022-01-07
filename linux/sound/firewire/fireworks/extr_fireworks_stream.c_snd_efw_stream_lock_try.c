
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {scalar_t__ dev_lock_count; int lock; } ;


 int EBUSY ;
 int snd_efw_stream_lock_changed (struct snd_efw*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_efw_stream_lock_try(struct snd_efw *efw)
{
 int err;

 spin_lock_irq(&efw->lock);


 if (efw->dev_lock_count < 0) {
  err = -EBUSY;
  goto end;
 }


 if (efw->dev_lock_count++ == 0)
  snd_efw_stream_lock_changed(efw);
 err = 0;
end:
 spin_unlock_irq(&efw->lock);
 return err;
}
