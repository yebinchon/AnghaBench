
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct proc_ns_operations {int name; } ;
struct inode {int i_ino; } ;
struct dentry {struct proc_ns_operations* d_fsdata; } ;


 struct inode* d_inode (struct dentry*) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int nsfs_show_path(struct seq_file *seq, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 const struct proc_ns_operations *ns_ops = dentry->d_fsdata;

 seq_printf(seq, "%s:[%lu]", ns_ops->name, inode->i_ino);
 return 0;
}
