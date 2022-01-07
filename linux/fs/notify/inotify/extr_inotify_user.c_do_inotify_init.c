
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int IN_CLOEXEC ;
 int IN_NONBLOCK ;
 scalar_t__ IS_ERR (struct fsnotify_group*) ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PTR_ERR (struct fsnotify_group*) ;
 int anon_inode_getfd (char*,int *,struct fsnotify_group*,int) ;
 int fsnotify_destroy_group (struct fsnotify_group*) ;
 int inotify_fops ;
 int inotify_max_queued_events ;
 struct fsnotify_group* inotify_new_group (int ) ;

__attribute__((used)) static int do_inotify_init(int flags)
{
 struct fsnotify_group *group;
 int ret;


 BUILD_BUG_ON(IN_CLOEXEC != O_CLOEXEC);
 BUILD_BUG_ON(IN_NONBLOCK != O_NONBLOCK);

 if (flags & ~(IN_CLOEXEC | IN_NONBLOCK))
  return -EINVAL;


 group = inotify_new_group(inotify_max_queued_events);
 if (IS_ERR(group))
  return PTR_ERR(group);

 ret = anon_inode_getfd("inotify", &inotify_fops, group,
      O_RDONLY | flags);
 if (ret < 0)
  fsnotify_destroy_group(group);

 return ret;
}
