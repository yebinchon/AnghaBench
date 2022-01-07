
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {struct snd_efw* private_data; } ;
struct snd_efw {scalar_t__ pull_ptr; scalar_t__ push_ptr; int lock; scalar_t__ dev_lock_changed; int hwdep_wait; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t
hwdep_poll(struct snd_hwdep *hwdep, struct file *file, poll_table *wait)
{
 struct snd_efw *efw = hwdep->private_data;
 __poll_t events;

 poll_wait(file, &efw->hwdep_wait, wait);

 spin_lock_irq(&efw->lock);
 if (efw->dev_lock_changed || efw->pull_ptr != efw->push_ptr)
  events = EPOLLIN | EPOLLRDNORM;
 else
  events = 0;
 spin_unlock_irq(&efw->lock);

 return events | EPOLLOUT;
}
