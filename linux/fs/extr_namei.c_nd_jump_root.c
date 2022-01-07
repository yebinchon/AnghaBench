
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dentry* dentry; } ;
struct nameidata {int flags; TYPE_1__ path; int inode; TYPE_1__ root; int seq; int root_seq; } ;
struct dentry {int d_inode; int d_seq; } ;


 int ECHILD ;
 int LOOKUP_JUMPED ;
 int LOOKUP_RCU ;
 int path_get (TYPE_1__*) ;
 int path_put (TYPE_1__*) ;
 int read_seqcount_retry (int *,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int nd_jump_root(struct nameidata *nd)
{
 if (nd->flags & LOOKUP_RCU) {
  struct dentry *d;
  nd->path = nd->root;
  d = nd->path.dentry;
  nd->inode = d->d_inode;
  nd->seq = nd->root_seq;
  if (unlikely(read_seqcount_retry(&d->d_seq, nd->seq)))
   return -ECHILD;
 } else {
  path_put(&nd->path);
  nd->path = nd->root;
  path_get(&nd->path);
  nd->inode = nd->path.dentry->d_inode;
 }
 nd->flags |= LOOKUP_JUMPED;
 return 0;
}
