
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int lock; scalar_t__ msg; scalar_t__ dev_lock_changed; int hwdep_wait; } ;
struct snd_hwdep {struct snd_motu* private_data; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t hwdep_poll(struct snd_hwdep *hwdep, struct file *file,
          poll_table *wait)
{
 struct snd_motu *motu = hwdep->private_data;
 __poll_t events;

 poll_wait(file, &motu->hwdep_wait, wait);

 spin_lock_irq(&motu->lock);
 if (motu->dev_lock_changed || motu->msg)
  events = EPOLLIN | EPOLLRDNORM;
 else
  events = 0;
 spin_unlock_irq(&motu->lock);

 return events | EPOLLOUT;
}
