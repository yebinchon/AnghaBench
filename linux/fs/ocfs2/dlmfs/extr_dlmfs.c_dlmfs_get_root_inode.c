
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int * i_op; int * i_fop; int i_ctime; int i_mtime; int i_atime; int i_ino; } ;


 int S_IFDIR ;
 int current_time (struct inode*) ;
 int dlmfs_root_inode_operations ;
 int get_next_ino () ;
 int inc_nlink (struct inode*) ;
 int inode_init_owner (struct inode*,int *,int) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_operations ;

__attribute__((used)) static struct inode *dlmfs_get_root_inode(struct super_block *sb)
{
 struct inode *inode = new_inode(sb);
 umode_t mode = S_IFDIR | 0755;

 if (inode) {
  inode->i_ino = get_next_ino();
  inode_init_owner(inode, ((void*)0), mode);
  inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
  inc_nlink(inode);

  inode->i_fop = &simple_dir_operations;
  inode->i_op = &dlmfs_root_inode_operations;
 }

 return inode;
}
