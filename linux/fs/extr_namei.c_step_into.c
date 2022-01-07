
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct nameidata {int flags; unsigned int seq; struct inode* inode; scalar_t__ depth; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int d_seq; } ;


 int ECHILD ;
 int LOOKUP_FOLLOW ;
 int LOOKUP_RCU ;
 int WALK_FOLLOW ;
 int WALK_MORE ;
 int d_is_symlink (TYPE_1__*) ;
 scalar_t__ likely (int) ;
 int path_to_nameidata (struct path*,struct nameidata*) ;
 int pick_link (struct nameidata*,struct path*,struct inode*,unsigned int) ;
 int put_link (struct nameidata*) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;

__attribute__((used)) static inline int step_into(struct nameidata *nd, struct path *path,
       int flags, struct inode *inode, unsigned seq)
{
 if (!(flags & WALK_MORE) && nd->depth)
  put_link(nd);
 if (likely(!d_is_symlink(path->dentry)) ||
    !(flags & WALK_FOLLOW || nd->flags & LOOKUP_FOLLOW)) {

  path_to_nameidata(path, nd);
  nd->inode = inode;
  nd->seq = seq;
  return 0;
 }

 if (nd->flags & LOOKUP_RCU) {
  if (read_seqcount_retry(&path->dentry->d_seq, seq))
   return -ECHILD;
 }
 return pick_link(nd, path, inode, seq);
}
