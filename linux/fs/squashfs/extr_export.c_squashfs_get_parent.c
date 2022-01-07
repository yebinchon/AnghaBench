
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {unsigned int parent; } ;


 struct inode* d_inode (struct dentry*) ;
 struct dentry* squashfs_export_iget (int ,unsigned int) ;
 TYPE_1__* squashfs_i (struct inode*) ;

__attribute__((used)) static struct dentry *squashfs_get_parent(struct dentry *child)
{
 struct inode *inode = d_inode(child);
 unsigned int parent_ino = squashfs_i(inode)->parent;

 return squashfs_export_iget(inode->i_sb, parent_ino);
}
