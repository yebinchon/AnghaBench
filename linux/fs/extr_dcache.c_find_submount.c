
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef enum d_walk_ret { ____Placeholder_d_walk_ret } d_walk_ret ;


 int D_WALK_CONTINUE ;
 int D_WALK_QUIT ;
 int __dget_dlock (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;

__attribute__((used)) static enum d_walk_ret find_submount(void *_data, struct dentry *dentry)
{
 struct dentry **victim = _data;
 if (d_mountpoint(dentry)) {
  __dget_dlock(dentry);
  *victim = dentry;
  return D_WALK_QUIT;
 }
 return D_WALK_CONTINUE;
}
