
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int shutdown; int notification_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fsnotify_group_stop_queueing(struct fsnotify_group *group)
{
 spin_lock(&group->notification_lock);
 group->shutdown = 1;
 spin_unlock(&group->notification_lock);
}
