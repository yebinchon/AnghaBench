
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {scalar_t__ dentry; int mnt; } ;
struct TYPE_2__ {int mnt; struct dentry* dentry; } ;
struct nameidata {int flags; scalar_t__ last_type; TYPE_1__ path; int last; } ;
struct dentry {int dummy; } ;


 int ECHILD ;
 int ENOENT ;
 scalar_t__ IS_ERR (scalar_t__) ;
 scalar_t__ LAST_NORM ;
 int LOOKUP_NO_REVAL ;
 int LOOKUP_PARENT ;
 int LOOKUP_RCU ;
 int PTR_ERR (scalar_t__) ;
 int d_backing_inode (scalar_t__) ;
 scalar_t__ d_is_negative (scalar_t__) ;
 scalar_t__ d_lookup (struct dentry*,int *) ;
 scalar_t__ dget (struct dentry*) ;
 int dput (scalar_t__) ;
 int handle_dots (struct nameidata*,scalar_t__) ;
 scalar_t__ lookup_slow (int *,struct dentry*,int) ;
 int step_into (struct nameidata*,struct path*,int ,int ,int ) ;
 scalar_t__ unlazy_walk (struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
mountpoint_last(struct nameidata *nd)
{
 int error = 0;
 struct dentry *dir = nd->path.dentry;
 struct path path;


 if (nd->flags & LOOKUP_RCU) {
  if (unlazy_walk(nd))
   return -ECHILD;
 }

 nd->flags &= ~LOOKUP_PARENT;

 if (unlikely(nd->last_type != LAST_NORM)) {
  error = handle_dots(nd, nd->last_type);
  if (error)
   return error;
  path.dentry = dget(nd->path.dentry);
 } else {
  path.dentry = d_lookup(dir, &nd->last);
  if (!path.dentry) {






   path.dentry = lookup_slow(&nd->last, dir,
          nd->flags | LOOKUP_NO_REVAL);
   if (IS_ERR(path.dentry))
    return PTR_ERR(path.dentry);
  }
 }
 if (d_is_negative(path.dentry)) {
  dput(path.dentry);
  return -ENOENT;
 }
 path.mnt = nd->path.mnt;
 return step_into(nd, &path, 0, d_backing_inode(path.dentry), 0);
}
