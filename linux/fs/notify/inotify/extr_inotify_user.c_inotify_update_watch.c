
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct fsnotify_group {int mark_mutex; } ;


 int ENOENT ;
 int inotify_new_watch (struct fsnotify_group*,struct inode*,int ) ;
 int inotify_update_existing_watch (struct fsnotify_group*,struct inode*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int inotify_update_watch(struct fsnotify_group *group, struct inode *inode, u32 arg)
{
 int ret = 0;

 mutex_lock(&group->mark_mutex);

 ret = inotify_update_existing_watch(group, inode, arg);

 if (ret == -ENOENT)
  ret = inotify_new_watch(group, inode, arg);
 mutex_unlock(&group->mark_mutex);

 return ret;
}
