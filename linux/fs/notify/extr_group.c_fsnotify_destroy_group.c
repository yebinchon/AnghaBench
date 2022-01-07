
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_group {scalar_t__ overflow_event; TYPE_1__* ops; int user_waits; int notification_waitq; } ;
struct TYPE_2__ {int (* free_event ) (scalar_t__) ;} ;


 int FSNOTIFY_OBJ_ALL_TYPES_MASK ;
 int atomic_read (int *) ;
 int fsnotify_clear_marks_by_group (struct fsnotify_group*,int ) ;
 int fsnotify_flush_notify (struct fsnotify_group*) ;
 int fsnotify_group_stop_queueing (struct fsnotify_group*) ;
 int fsnotify_put_group (struct fsnotify_group*) ;
 int fsnotify_wait_marks_destroyed () ;
 int stub1 (scalar_t__) ;
 int wait_event (int ,int) ;

void fsnotify_destroy_group(struct fsnotify_group *group)
{






 fsnotify_group_stop_queueing(group);


 fsnotify_clear_marks_by_group(group, FSNOTIFY_OBJ_ALL_TYPES_MASK);






 wait_event(group->notification_waitq, !atomic_read(&group->user_waits));







 fsnotify_wait_marks_destroyed();







 fsnotify_flush_notify(group);





 if (group->overflow_event)
  group->ops->free_event(group->overflow_event);

 fsnotify_put_group(group);
}
