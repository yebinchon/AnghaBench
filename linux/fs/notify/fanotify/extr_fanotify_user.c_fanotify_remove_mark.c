
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int connector; } ;
struct fsnotify_group {int mark_mutex; } ;
typedef int fsnotify_connp_t ;
typedef int __u32 ;


 int ENOENT ;
 int fanotify_mark_remove_from_mask (struct fsnotify_mark*,int,unsigned int,int*) ;
 int fsnotify_conn_mask (int ) ;
 int fsnotify_detach_mark (struct fsnotify_mark*) ;
 struct fsnotify_mark* fsnotify_find_mark (int *,struct fsnotify_group*) ;
 int fsnotify_free_mark (struct fsnotify_mark*) ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 int fsnotify_recalc_mask (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fanotify_remove_mark(struct fsnotify_group *group,
    fsnotify_connp_t *connp, __u32 mask,
    unsigned int flags)
{
 struct fsnotify_mark *fsn_mark = ((void*)0);
 __u32 removed;
 int destroy_mark;

 mutex_lock(&group->mark_mutex);
 fsn_mark = fsnotify_find_mark(connp, group);
 if (!fsn_mark) {
  mutex_unlock(&group->mark_mutex);
  return -ENOENT;
 }

 removed = fanotify_mark_remove_from_mask(fsn_mark, mask, flags,
       &destroy_mark);
 if (removed & fsnotify_conn_mask(fsn_mark->connector))
  fsnotify_recalc_mask(fsn_mark->connector);
 if (destroy_mark)
  fsnotify_detach_mark(fsn_mark);
 mutex_unlock(&group->mark_mutex);
 if (destroy_mark)
  fsnotify_free_mark(fsn_mark);


 fsnotify_put_mark(fsn_mark);
 return 0;
}
