
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; int mnt; } ;
struct TYPE_2__ {int mnt; int dentry; } ;
struct nameidata {scalar_t__ last_type; TYPE_1__ path; int flags; int last; scalar_t__ depth; } ;
struct inode {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ LAST_NORM ;
 int PTR_ERR (int ) ;
 int WALK_MORE ;
 struct inode* d_backing_inode (int ) ;
 int d_is_negative (int ) ;
 int follow_managed (struct path*,struct nameidata*) ;
 int handle_dots (struct nameidata*,scalar_t__) ;
 int lookup_fast (struct nameidata*,struct path*,struct inode**,unsigned int*) ;
 int lookup_slow (int *,int ,int ) ;
 int path_to_nameidata (struct path*,struct nameidata*) ;
 int put_link (struct nameidata*) ;
 int step_into (struct nameidata*,struct path*,int,struct inode*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int walk_component(struct nameidata *nd, int flags)
{
 struct path path;
 struct inode *inode;
 unsigned seq;
 int err;





 if (unlikely(nd->last_type != LAST_NORM)) {
  err = handle_dots(nd, nd->last_type);
  if (!(flags & WALK_MORE) && nd->depth)
   put_link(nd);
  return err;
 }
 err = lookup_fast(nd, &path, &inode, &seq);
 if (unlikely(err <= 0)) {
  if (err < 0)
   return err;
  path.dentry = lookup_slow(&nd->last, nd->path.dentry,
       nd->flags);
  if (IS_ERR(path.dentry))
   return PTR_ERR(path.dentry);

  path.mnt = nd->path.mnt;
  err = follow_managed(&path, nd);
  if (unlikely(err < 0))
   return err;

  if (unlikely(d_is_negative(path.dentry))) {
   path_to_nameidata(&path, nd);
   return -ENOENT;
  }

  seq = 0;
  inode = d_backing_inode(path.dentry);
 }

 return step_into(nd, &path, flags, inode, seq);
}
