
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {scalar_t__ dev_lock_count; int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int snd_efw_stream_lock_changed (struct snd_efw*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_efw_stream_lock_release(struct snd_efw *efw)
{
 spin_lock_irq(&efw->lock);

 if (WARN_ON(efw->dev_lock_count <= 0))
  goto end;
 if (--efw->dev_lock_count == 0)
  snd_efw_stream_lock_changed(efw);
end:
 spin_unlock_irq(&efw->lock);
}
