
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct proc_dir_entry {TYPE_1__* proc_fops; scalar_t__ proc_iops; scalar_t__ nlink; scalar_t__ size; int gid; int uid; scalar_t__ mode; int low_ino; } ;
struct inode {TYPE_1__* i_fop; scalar_t__ i_mode; scalar_t__ i_op; scalar_t__ i_size; int i_gid; int i_uid; int i_ctime; int i_atime; int i_mtime; int i_ino; } ;
struct TYPE_5__ {struct proc_dir_entry* pde; } ;
struct TYPE_4__ {int compat_ioctl; } ;


 TYPE_3__* PROC_I (struct inode*) ;
 scalar_t__ S_ISREG (scalar_t__) ;
 int WARN_ON (int) ;
 int current_time (struct inode*) ;
 scalar_t__ is_empty_pde (struct proc_dir_entry*) ;
 int make_empty_dir_inode (struct inode*) ;
 struct inode* new_inode_pseudo (struct super_block*) ;
 int pde_put (struct proc_dir_entry*) ;
 TYPE_1__ proc_reg_file_ops ;
 TYPE_1__ proc_reg_file_ops_no_compat ;
 int set_nlink (struct inode*,scalar_t__) ;

struct inode *proc_get_inode(struct super_block *sb, struct proc_dir_entry *de)
{
 struct inode *inode = new_inode_pseudo(sb);

 if (inode) {
  inode->i_ino = de->low_ino;
  inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
  PROC_I(inode)->pde = de;

  if (is_empty_pde(de)) {
   make_empty_dir_inode(inode);
   return inode;
  }
  if (de->mode) {
   inode->i_mode = de->mode;
   inode->i_uid = de->uid;
   inode->i_gid = de->gid;
  }
  if (de->size)
   inode->i_size = de->size;
  if (de->nlink)
   set_nlink(inode, de->nlink);
  WARN_ON(!de->proc_iops);
  inode->i_op = de->proc_iops;
  if (de->proc_fops) {
   if (S_ISREG(inode->i_mode)) {






     inode->i_fop = &proc_reg_file_ops;
   } else {
    inode->i_fop = de->proc_fops;
   }
  }
 } else
        pde_put(de);
 return inode;
}
