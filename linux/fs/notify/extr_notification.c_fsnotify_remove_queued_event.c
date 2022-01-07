
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int q_len; int notification_lock; } ;
struct fsnotify_event {int list; } ;


 int assert_spin_locked (int *) ;
 int list_del_init (int *) ;

void fsnotify_remove_queued_event(struct fsnotify_group *group,
      struct fsnotify_event *event)
{
 assert_spin_locked(&group->notification_lock);




 list_del_init(&event->list);
 group->q_len--;
}
