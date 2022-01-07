
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_oxfw {int lock; scalar_t__ dev_lock_changed; int hwdep_wait; } ;
struct snd_hwdep {struct snd_oxfw* private_data; } ;
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
 struct snd_oxfw *oxfw = hwdep->private_data;
 __poll_t events;

 poll_wait(file, &oxfw->hwdep_wait, wait);

 spin_lock_irq(&oxfw->lock);
 if (oxfw->dev_lock_changed)
  events = EPOLLIN | EPOLLRDNORM;
 else
  events = 0;
 spin_unlock_irq(&oxfw->lock);

 return events;
}
