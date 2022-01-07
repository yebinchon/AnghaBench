
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {int refcnt; } ;
struct inotify_inode_mark {struct fsnotify_mark fsn_mark; } ;
struct idr {int dummy; } ;
struct TYPE_2__ {int idr_lock; struct idr idr; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
typedef int spinlock_t ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int fsnotify_get_mark (struct fsnotify_mark*) ;
 struct inotify_inode_mark* idr_find (struct idr*,int) ;
 int refcount_read (int *) ;

__attribute__((used)) static struct inotify_inode_mark *inotify_idr_find_locked(struct fsnotify_group *group,
        int wd)
{
 struct idr *idr = &group->inotify_data.idr;
 spinlock_t *idr_lock = &group->inotify_data.idr_lock;
 struct inotify_inode_mark *i_mark;

 assert_spin_locked(idr_lock);

 i_mark = idr_find(idr, wd);
 if (i_mark) {
  struct fsnotify_mark *fsn_mark = &i_mark->fsn_mark;

  fsnotify_get_mark(fsn_mark);

  BUG_ON(refcount_read(&fsn_mark->refcnt) < 2);
 }

 return i_mark;
}
