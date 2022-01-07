
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {struct dentry* dentry; TYPE_1__* mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;


 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ follow_up (struct path*) ;

__attribute__((used)) static void follow_to_parent(struct path *path)
{
 struct dentry *dp;

 while (path->dentry == path->mnt->mnt_root && follow_up(path))
  ;
 dp = dget_parent(path->dentry);
 dput(path->dentry);
 path->dentry = dp;
}
