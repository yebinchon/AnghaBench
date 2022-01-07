
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {struct inode* i_private; int i_ino; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* __upperdentry; } ;


 TYPE_1__* OVL_I (struct inode*) ;
 int WARN_ON (struct dentry*) ;
 int __insert_inode_hash (struct inode*,unsigned long) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ inode_unhashed (struct inode*) ;
 int smp_wmb () ;

void ovl_inode_update(struct inode *inode, struct dentry *upperdentry)
{
 struct inode *upperinode = d_inode(upperdentry);

 WARN_ON(OVL_I(inode)->__upperdentry);




 smp_wmb();
 OVL_I(inode)->__upperdentry = upperdentry;
 if (inode_unhashed(inode)) {
  if (!inode->i_ino)
   inode->i_ino = upperinode->i_ino;
  inode->i_private = upperinode;
  __insert_inode_hash(inode, (unsigned long) upperinode);
 }
}
