
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {scalar_t__ mnt; int dentry; } ;
struct TYPE_2__ {scalar_t__ mnt; int dentry; } ;
struct nameidata {int flags; TYPE_1__ path; } ;


 int LOOKUP_RCU ;
 int dput (int ) ;
 int mntput (scalar_t__) ;

__attribute__((used)) static inline void path_to_nameidata(const struct path *path,
     struct nameidata *nd)
{
 if (!(nd->flags & LOOKUP_RCU)) {
  dput(nd->path.dentry);
  if (nd->path.mnt != path->mnt)
   mntput(nd->path.mnt);
 }
 nd->path.mnt = path->mnt;
 nd->path.dentry = path->dentry;
}
