
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int notification_lock; int notification_waitq; } ;
struct file {struct fsnotify_group* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int fsnotify_notify_queue_is_empty (struct fsnotify_group*) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __poll_t inotify_poll(struct file *file, poll_table *wait)
{
 struct fsnotify_group *group = file->private_data;
 __poll_t ret = 0;

 poll_wait(file, &group->notification_waitq, wait);
 spin_lock(&group->notification_lock);
 if (!fsnotify_notify_queue_is_empty(group))
  ret = EPOLLIN | EPOLLRDNORM;
 spin_unlock(&group->notification_lock);

 return ret;
}
