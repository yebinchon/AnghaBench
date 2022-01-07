
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int flags; int lock; int g_list; int connector; scalar_t__ mask; struct fsnotify_group* group; } ;
struct fsnotify_group {int num_marks; int marks_list; int mark_mutex; } ;
typedef int fsnotify_connp_t ;
typedef int __kernel_fsid_t ;


 int BUG_ON (int) ;
 int FSNOTIFY_MARK_FLAG_ALIVE ;
 int FSNOTIFY_MARK_FLAG_ATTACHED ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int fsnotify_add_mark_list (struct fsnotify_mark*,int *,unsigned int,int,int *) ;
 int fsnotify_get_mark (struct fsnotify_mark*) ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 int fsnotify_recalc_mask (int ) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int mutex_is_locked (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int fsnotify_add_mark_locked(struct fsnotify_mark *mark,
        fsnotify_connp_t *connp, unsigned int type,
        int allow_dups, __kernel_fsid_t *fsid)
{
 struct fsnotify_group *group = mark->group;
 int ret = 0;

 BUG_ON(!mutex_is_locked(&group->mark_mutex));







 spin_lock(&mark->lock);
 mark->flags |= FSNOTIFY_MARK_FLAG_ALIVE | FSNOTIFY_MARK_FLAG_ATTACHED;

 list_add(&mark->g_list, &group->marks_list);
 atomic_inc(&group->num_marks);
 fsnotify_get_mark(mark);
 spin_unlock(&mark->lock);

 ret = fsnotify_add_mark_list(mark, connp, type, allow_dups, fsid);
 if (ret)
  goto err;

 if (mark->mask)
  fsnotify_recalc_mask(mark->connector);

 return ret;
err:
 spin_lock(&mark->lock);
 mark->flags &= ~(FSNOTIFY_MARK_FLAG_ALIVE |
    FSNOTIFY_MARK_FLAG_ATTACHED);
 list_del_init(&mark->g_list);
 spin_unlock(&mark->lock);
 atomic_dec(&group->num_marks);

 fsnotify_put_mark(mark);
 return ret;
}
