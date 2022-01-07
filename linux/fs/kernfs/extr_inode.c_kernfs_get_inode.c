
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int ino; } ;
struct kernfs_node {TYPE_1__ id; } ;
struct inode {int i_state; } ;


 int I_NEW ;
 struct inode* iget_locked (struct super_block*,int ) ;
 int kernfs_init_inode (struct kernfs_node*,struct inode*) ;

struct inode *kernfs_get_inode(struct super_block *sb, struct kernfs_node *kn)
{
 struct inode *inode;

 inode = iget_locked(sb, kn->id.ino);
 if (inode && (inode->i_state & I_NEW))
  kernfs_init_inode(kn, inode);

 return inode;
}
