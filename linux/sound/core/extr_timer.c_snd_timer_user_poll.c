
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int qlock; scalar_t__ disconnected; scalar_t__ qused; int qchange_sleep; } ;
struct file {struct snd_timer_user* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t snd_timer_user_poll(struct file *file, poll_table * wait)
{
        __poll_t mask;
        struct snd_timer_user *tu;

        tu = file->private_data;

        poll_wait(file, &tu->qchange_sleep, wait);

 mask = 0;
 spin_lock_irq(&tu->qlock);
 if (tu->qused)
  mask |= EPOLLIN | EPOLLRDNORM;
 if (tu->disconnected)
  mask |= EPOLLERR;
 spin_unlock_irq(&tu->qlock);

 return mask;
}
