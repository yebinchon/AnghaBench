
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int flags; int lock; int g_list; int refcnt; struct fsnotify_group* group; } ;
struct fsnotify_group {int num_marks; int mark_mutex; } ;


 int FSNOTIFY_MARK_FLAG_ATTACHED ;
 int WARN_ON_ONCE (int) ;
 int atomic_dec (int *) ;
 int fsnotify_mark_srcu ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 int list_del_init (int *) ;
 int mutex_is_locked (int *) ;
 int refcount_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu_read_lock_held (int *) ;

void fsnotify_detach_mark(struct fsnotify_mark *mark)
{
 struct fsnotify_group *group = mark->group;

 WARN_ON_ONCE(!mutex_is_locked(&group->mark_mutex));
 WARN_ON_ONCE(!srcu_read_lock_held(&fsnotify_mark_srcu) &&
       refcount_read(&mark->refcnt) < 1 +
   !!(mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED));

 spin_lock(&mark->lock);

 if (!(mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED)) {
  spin_unlock(&mark->lock);
  return;
 }
 mark->flags &= ~FSNOTIFY_MARK_FLAG_ATTACHED;
 list_del_init(&mark->g_list);
 spin_unlock(&mark->lock);

 atomic_dec(&group->num_marks);


 fsnotify_put_mark(mark);
}
