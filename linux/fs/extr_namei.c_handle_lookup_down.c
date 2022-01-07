
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct nameidata {unsigned int seq; int flags; struct inode* inode; struct path path; } ;
struct inode {int dummy; } ;


 int ECHILD ;
 int LOOKUP_RCU ;
 int __follow_mount_rcu (struct nameidata*,struct path*,struct inode**,unsigned int*) ;
 struct inode* d_backing_inode (int ) ;
 int dget (int ) ;
 int follow_managed (struct path*,struct nameidata*) ;
 int path_to_nameidata (struct path*,struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int handle_lookup_down(struct nameidata *nd)
{
 struct path path = nd->path;
 struct inode *inode = nd->inode;
 unsigned seq = nd->seq;
 int err;

 if (nd->flags & LOOKUP_RCU) {





  if (unlikely(!__follow_mount_rcu(nd, &path, &inode, &seq)))
   return -ECHILD;
 } else {
  dget(path.dentry);
  err = follow_managed(&path, nd);
  if (unlikely(err < 0))
   return err;
  inode = d_backing_inode(path.dentry);
  seq = 0;
 }
 path_to_nameidata(&path, nd);
 nd->inode = inode;
 nd->seq = seq;
 return 0;
}
