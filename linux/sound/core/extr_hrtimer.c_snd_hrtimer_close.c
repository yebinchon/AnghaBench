
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {struct snd_hrtimer* private_data; int lock; scalar_t__ running; } ;
struct snd_hrtimer {int in_callback; int hrt; } ;


 int hrtimer_cancel (int *) ;
 int kfree (struct snd_hrtimer*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hrtimer_close(struct snd_timer *t)
{
 struct snd_hrtimer *stime = t->private_data;

 if (stime) {
  spin_lock_irq(&t->lock);
  t->running = 0;
  stime->in_callback = 1;
  spin_unlock_irq(&t->lock);

  hrtimer_cancel(&stime->hrt);
  kfree(stime);
  t->private_data = ((void*)0);
 }
 return 0;
}
