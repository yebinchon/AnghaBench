
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int notification_lock; } ;
struct fsnotify_event {int dummy; } ;


 int fsnotify_destroy_event (struct fsnotify_group*,struct fsnotify_event*) ;
 int fsnotify_notify_queue_is_empty (struct fsnotify_group*) ;
 struct fsnotify_event* fsnotify_remove_first_event (struct fsnotify_group*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fsnotify_flush_notify(struct fsnotify_group *group)
{
 struct fsnotify_event *event;

 spin_lock(&group->notification_lock);
 while (!fsnotify_notify_queue_is_empty(group)) {
  event = fsnotify_remove_first_event(group);
  spin_unlock(&group->notification_lock);
  fsnotify_destroy_event(group, event);
  spin_lock(&group->notification_lock);
 }
 spin_unlock(&group->notification_lock);
}
