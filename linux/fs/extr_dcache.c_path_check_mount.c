
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;
struct check_mount {int mounted; int mnt; } ;
typedef enum d_walk_ret { ____Placeholder_d_walk_ret } d_walk_ret ;


 int D_WALK_CONTINUE ;
 int D_WALK_QUIT ;
 scalar_t__ __path_is_mountpoint (struct path*) ;
 int d_mountpoint (struct dentry*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static enum d_walk_ret path_check_mount(void *data, struct dentry *dentry)
{
 struct check_mount *info = data;
 struct path path = { .mnt = info->mnt, .dentry = dentry };

 if (likely(!d_mountpoint(dentry)))
  return D_WALK_CONTINUE;
 if (__path_is_mountpoint(&path)) {
  info->mounted = 1;
  return D_WALK_QUIT;
 }
 return D_WALK_CONTINUE;
}
