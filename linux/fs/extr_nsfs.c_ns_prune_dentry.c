
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns_common {int stashed; } ;
struct inode {struct ns_common* i_private; } ;
struct dentry {int dummy; } ;


 int atomic_long_set (int *,int ) ;
 struct inode* d_inode (struct dentry*) ;

__attribute__((used)) static void ns_prune_dentry(struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 if (inode) {
  struct ns_common *ns = inode->i_private;
  atomic_long_set(&ns->stashed, 0);
 }
}
