
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {struct fsnotify_group* group; } ;
struct fsnotify_group {int mark_mutex; } ;
typedef int fsnotify_connp_t ;
typedef int __kernel_fsid_t ;


 int fsnotify_add_mark_locked (struct fsnotify_mark*,int *,unsigned int,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fsnotify_add_mark(struct fsnotify_mark *mark, fsnotify_connp_t *connp,
        unsigned int type, int allow_dups, __kernel_fsid_t *fsid)
{
 int ret;
 struct fsnotify_group *group = mark->group;

 mutex_lock(&group->mark_mutex);
 ret = fsnotify_add_mark_locked(mark, connp, type, allow_dups, fsid);
 mutex_unlock(&group->mark_mutex);
 return ret;
}
