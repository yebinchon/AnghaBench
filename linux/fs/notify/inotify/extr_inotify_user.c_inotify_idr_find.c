
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inotify_inode_mark {int dummy; } ;
struct TYPE_2__ {int idr_lock; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
typedef int spinlock_t ;


 struct inotify_inode_mark* inotify_idr_find_locked (struct fsnotify_group*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct inotify_inode_mark *inotify_idr_find(struct fsnotify_group *group,
        int wd)
{
 struct inotify_inode_mark *i_mark;
 spinlock_t *idr_lock = &group->inotify_data.idr_lock;

 spin_lock(idr_lock);
 i_mark = inotify_idr_find_locked(group, wd);
 spin_unlock(idr_lock);

 return i_mark;
}
