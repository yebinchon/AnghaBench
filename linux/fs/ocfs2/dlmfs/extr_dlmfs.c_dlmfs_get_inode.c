
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int * i_fop; int * i_op; int i_ctime; int i_mtime; int i_atime; int i_ino; struct super_block* i_sb; } ;
struct dlmfs_inode_private {int ip_parent; int ip_lockres; int ip_conn; } ;
struct dentry {int dummy; } ;


 int BUG () ;
 int BUG_ON (int) ;
 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 int DLM_LVB_LEN ;

 int S_IFMT ;

 int current_time (struct inode*) ;
 int dlmfs_dir_inode_operations ;
 int dlmfs_file_inode_operations ;
 int dlmfs_file_operations ;
 int get_next_ino () ;
 int i_size_write (struct inode*,int ) ;
 int igrab (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int inode_init_owner (struct inode*,struct inode*,int) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_operations ;
 int user_dlm_lock_res_init (int *,struct dentry*) ;

__attribute__((used)) static struct inode *dlmfs_get_inode(struct inode *parent,
         struct dentry *dentry,
         umode_t mode)
{
 struct super_block *sb = parent->i_sb;
 struct inode * inode = new_inode(sb);
 struct dlmfs_inode_private *ip;

 if (!inode)
  return ((void*)0);

 inode->i_ino = get_next_ino();
 inode_init_owner(inode, parent, mode);
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);

 ip = DLMFS_I(inode);
 ip->ip_conn = DLMFS_I(parent)->ip_conn;

 switch (mode & S_IFMT) {
 default:


  BUG();
  break;
 case 128:
  inode->i_op = &dlmfs_file_inode_operations;
  inode->i_fop = &dlmfs_file_operations;

  i_size_write(inode, DLM_LVB_LEN);

  user_dlm_lock_res_init(&ip->ip_lockres, dentry);





  ip->ip_parent = igrab(parent);
  BUG_ON(!ip->ip_parent);
  break;
 case 129:
  inode->i_op = &dlmfs_dir_inode_operations;
  inode->i_fop = &simple_dir_operations;



  inc_nlink(inode);
  break;
 }
 return inode;
}
