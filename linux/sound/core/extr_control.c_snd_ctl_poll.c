
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_file {int events; int change_sleep; int subscribed; } ;
struct file {struct snd_ctl_file* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t snd_ctl_poll(struct file *file, poll_table * wait)
{
 __poll_t mask;
 struct snd_ctl_file *ctl;

 ctl = file->private_data;
 if (!ctl->subscribed)
  return 0;
 poll_wait(file, &ctl->change_sleep, wait);

 mask = 0;
 if (!list_empty(&ctl->events))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
