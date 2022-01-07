
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {scalar_t__ push_pos; scalar_t__ pull_pos; int lock; scalar_t__ dev_lock_changed; int hwdep_wait; } ;
struct snd_hwdep {struct snd_tscm* private_data; } ;
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
 struct snd_tscm *tscm = hwdep->private_data;
 __poll_t events;

 poll_wait(file, &tscm->hwdep_wait, wait);

 spin_lock_irq(&tscm->lock);
 if (tscm->dev_lock_changed || tscm->push_pos != tscm->pull_pos)
  events = EPOLLIN | EPOLLRDNORM;
 else
  events = 0;
 spin_unlock_irq(&tscm->lock);

 return events;
}
