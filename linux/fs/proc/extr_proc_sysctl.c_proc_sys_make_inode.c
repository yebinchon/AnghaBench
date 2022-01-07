
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct proc_inode {int sysctl_inodes; struct ctl_table* sysctl_entry; struct ctl_table_header* sysctl; } ;
struct inode {int i_gid; int i_uid; int * i_fop; int * i_op; int i_mode; int i_ctime; int i_atime; int i_mtime; int i_ino; } ;
struct ctl_table_root {int (* set_ownership ) (struct ctl_table_header*,struct ctl_table*,int *,int *) ;} ;
struct ctl_table_header {int count; int inodes; int unregistering; struct ctl_table_root* root; } ;
struct ctl_table {int mode; } ;


 int ENOENT ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 struct proc_inode* PROC_I (struct inode*) ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_ISDIR (int ) ;
 int current_time (struct inode*) ;
 int get_next_ino () ;
 int hlist_add_head_rcu (int *,int *) ;
 int iput (struct inode*) ;
 scalar_t__ is_empty_dir (struct ctl_table_header*) ;
 int make_empty_dir_inode (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int proc_sys_dir_file_operations ;
 int proc_sys_dir_operations ;
 int proc_sys_file_operations ;
 int proc_sys_inode_operations ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ctl_table_header*,struct ctl_table*,int *,int *) ;
 int sysctl_lock ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct inode *proc_sys_make_inode(struct super_block *sb,
  struct ctl_table_header *head, struct ctl_table *table)
{
 struct ctl_table_root *root = head->root;
 struct inode *inode;
 struct proc_inode *ei;

 inode = new_inode(sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 inode->i_ino = get_next_ino();

 ei = PROC_I(inode);

 spin_lock(&sysctl_lock);
 if (unlikely(head->unregistering)) {
  spin_unlock(&sysctl_lock);
  iput(inode);
  return ERR_PTR(-ENOENT);
 }
 ei->sysctl = head;
 ei->sysctl_entry = table;
 hlist_add_head_rcu(&ei->sysctl_inodes, &head->inodes);
 head->count++;
 spin_unlock(&sysctl_lock);

 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_mode = table->mode;
 if (!S_ISDIR(table->mode)) {
  inode->i_mode |= S_IFREG;
  inode->i_op = &proc_sys_inode_operations;
  inode->i_fop = &proc_sys_file_operations;
 } else {
  inode->i_mode |= S_IFDIR;
  inode->i_op = &proc_sys_dir_operations;
  inode->i_fop = &proc_sys_dir_file_operations;
  if (is_empty_dir(head))
   make_empty_dir_inode(inode);
 }

 if (root->set_ownership)
  root->set_ownership(head, table, &inode->i_uid, &inode->i_gid);
 else {
  inode->i_uid = GLOBAL_ROOT_UID;
  inode->i_gid = GLOBAL_ROOT_GID;
 }

 return inode;
}
