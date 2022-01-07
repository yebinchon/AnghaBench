
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {scalar_t__ dev_lock_count; int lock; } ;


 int EBUSY ;
 int snd_oxfw_stream_lock_changed (struct snd_oxfw*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_oxfw_stream_lock_try(struct snd_oxfw *oxfw)
{
 int err;

 spin_lock_irq(&oxfw->lock);


 if (oxfw->dev_lock_count < 0) {
  err = -EBUSY;
  goto end;
 }


 if (oxfw->dev_lock_count++ == 0)
  snd_oxfw_stream_lock_changed(oxfw);
 err = 0;
end:
 spin_unlock_irq(&oxfw->lock);
 return err;
}
