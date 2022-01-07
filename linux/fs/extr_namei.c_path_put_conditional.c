
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {scalar_t__ mnt; int dentry; } ;
struct TYPE_2__ {scalar_t__ mnt; } ;
struct nameidata {TYPE_1__ path; } ;


 int dput (int ) ;
 int mntput (scalar_t__) ;

__attribute__((used)) static void path_put_conditional(struct path *path, struct nameidata *nd)
{
 dput(path->dentry);
 if (path->mnt != nd->path.mnt)
  mntput(path->mnt);
}
