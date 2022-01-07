
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {struct fsnotify_group* group; } ;
struct fsnotify_group {int notification_waitq; scalar_t__ shutdown; int user_waits; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 int wake_up (int *) ;

__attribute__((used)) static void fsnotify_put_mark_wake(struct fsnotify_mark *mark)
{
 if (mark) {
  struct fsnotify_group *group = mark->group;

  fsnotify_put_mark(mark);




  if (atomic_dec_and_test(&group->user_waits) && group->shutdown)
   wake_up(&group->notification_waitq);
 }
}
