
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {struct snd_ff* private_data; } ;
struct snd_ff {int lock; scalar_t__ dev_lock_changed; int hwdep_wait; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t hwdep_poll(struct snd_hwdep *hwdep, struct file *file,
          poll_table *wait)
{
 struct snd_ff *ff = hwdep->private_data;
 __poll_t events;

 poll_wait(file, &ff->hwdep_wait, wait);

 spin_lock_irq(&ff->lock);
 if (ff->dev_lock_changed)
  events = EPOLLIN | EPOLLRDNORM;
 else
  events = 0;
 spin_unlock_irq(&ff->lock);

 return events;
}
