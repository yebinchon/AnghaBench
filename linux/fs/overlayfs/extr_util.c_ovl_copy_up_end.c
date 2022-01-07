
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 int ovl_inode_unlock (int ) ;

void ovl_copy_up_end(struct dentry *dentry)
{
 ovl_inode_unlock(d_inode(dentry));
}
