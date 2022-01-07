
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {int flags; int lock; struct fsnotify_group* group; } ;
struct fsnotify_group {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* freeing_mark ) (struct fsnotify_mark*,struct fsnotify_group*) ;} ;


 int FSNOTIFY_MARK_FLAG_ALIVE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct fsnotify_mark*,struct fsnotify_group*) ;

void fsnotify_free_mark(struct fsnotify_mark *mark)
{
 struct fsnotify_group *group = mark->group;

 spin_lock(&mark->lock);

 if (!(mark->flags & FSNOTIFY_MARK_FLAG_ALIVE)) {
  spin_unlock(&mark->lock);
  return;
 }
 mark->flags &= ~FSNOTIFY_MARK_FLAG_ALIVE;
 spin_unlock(&mark->lock);






 if (group->ops->freeing_mark)
  group->ops->freeing_mark(mark, group);
}
