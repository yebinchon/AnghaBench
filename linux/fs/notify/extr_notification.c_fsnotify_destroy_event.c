
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_group {TYPE_1__* ops; int notification_lock; struct fsnotify_event* overflow_event; } ;
struct fsnotify_event {int list; } ;
struct TYPE_2__ {int (* free_event ) (struct fsnotify_event*) ;} ;


 int WARN_ON (int) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct fsnotify_event*) ;

void fsnotify_destroy_event(struct fsnotify_group *group,
       struct fsnotify_event *event)
{

 if (!event || event == group->overflow_event)
  return;






 if (!list_empty(&event->list)) {
  spin_lock(&group->notification_lock);
  WARN_ON(!list_empty(&event->list));
  spin_unlock(&group->notification_lock);
 }
 group->ops->free_event(event);
}
