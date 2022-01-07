
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int * i_op; int * i_fop; int i_ctime; int i_mtime; int i_atime; TYPE_1__* i_mapping; int i_ino; } ;
typedef int dev_t ;
struct TYPE_3__ {int * a_ops; } ;


 int GFP_HIGHUSER ;


 int S_IFMT ;

 int current_time (struct inode*) ;
 int get_next_ino () ;
 int inc_nlink (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int inode_init_owner (struct inode*,struct inode const*,int) ;
 int inode_nohighmem (struct inode*) ;
 int mapping_set_gfp_mask (TYPE_1__*,int ) ;
 int mapping_set_unevictable (TYPE_1__*) ;
 struct inode* new_inode (struct super_block*) ;
 int page_symlink_inode_operations ;
 int ramfs_aops ;
 int ramfs_dir_inode_operations ;
 int ramfs_file_inode_operations ;
 int ramfs_file_operations ;
 int simple_dir_operations ;

struct inode *ramfs_get_inode(struct super_block *sb,
    const struct inode *dir, umode_t mode, dev_t dev)
{
 struct inode * inode = new_inode(sb);

 if (inode) {
  inode->i_ino = get_next_ino();
  inode_init_owner(inode, dir, mode);
  inode->i_mapping->a_ops = &ramfs_aops;
  mapping_set_gfp_mask(inode->i_mapping, GFP_HIGHUSER);
  mapping_set_unevictable(inode->i_mapping);
  inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
  switch (mode & S_IFMT) {
  default:
   init_special_inode(inode, mode, dev);
   break;
  case 128:
   inode->i_op = &ramfs_file_inode_operations;
   inode->i_fop = &ramfs_file_operations;
   break;
  case 130:
   inode->i_op = &ramfs_dir_inode_operations;
   inode->i_fop = &simple_dir_operations;


   inc_nlink(inode);
   break;
  case 129:
   inode->i_op = &page_symlink_inode_operations;
   inode_nohighmem(inode);
   break;
  }
 }
 return inode;
}
