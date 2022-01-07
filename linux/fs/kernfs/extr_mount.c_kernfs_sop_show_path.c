
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct kernfs_syscall_ops {int (* show_path ) (struct seq_file*,struct kernfs_node*,struct kernfs_root*) ;} ;
struct kernfs_root {struct kernfs_syscall_ops* syscall_ops; } ;
struct kernfs_node {int dummy; } ;
struct dentry {int dummy; } ;


 struct kernfs_node* kernfs_dentry_node (struct dentry*) ;
 struct kernfs_root* kernfs_root (struct kernfs_node*) ;
 int seq_dentry (struct seq_file*,struct dentry*,char*) ;
 int stub1 (struct seq_file*,struct kernfs_node*,struct kernfs_root*) ;

__attribute__((used)) static int kernfs_sop_show_path(struct seq_file *sf, struct dentry *dentry)
{
 struct kernfs_node *node = kernfs_dentry_node(dentry);
 struct kernfs_root *root = kernfs_root(node);
 struct kernfs_syscall_ops *scops = root->syscall_ops;

 if (scops && scops->show_path)
  return scops->show_path(sf, node, root);

 seq_dentry(sf, dentry, " \t\n\\");
 return 0;
}
