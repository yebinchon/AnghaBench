
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {int flags; int lock; TYPE_1__* group; int refcnt; } ;
struct TYPE_2__ {int user_waits; } ;


 int FSNOTIFY_MARK_FLAG_ATTACHED ;
 int atomic_inc (int *) ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 scalar_t__ refcount_inc_not_zero (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool fsnotify_get_mark_safe(struct fsnotify_mark *mark)
{
 if (!mark)
  return 1;

 if (refcount_inc_not_zero(&mark->refcnt)) {
  spin_lock(&mark->lock);
  if (mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED) {

   atomic_inc(&mark->group->user_waits);
   spin_unlock(&mark->lock);
   return 1;
  }
  spin_unlock(&mark->lock);
  fsnotify_put_mark(mark);
 }
 return 0;
}
