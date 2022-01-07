
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {scalar_t__ dev_lock_count; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int snd_oxfw_stream_lock_changed (struct snd_oxfw*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_oxfw_stream_lock_release(struct snd_oxfw *oxfw)
{
 spin_lock_irq(&oxfw->lock);

 if (WARN_ON(oxfw->dev_lock_count <= 0))
  goto end;
 if (--oxfw->dev_lock_count == 0)
  snd_oxfw_stream_lock_changed(oxfw);
end:
 spin_unlock_irq(&oxfw->lock);
}
