
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct proc_maps_private {int mm; struct inode* inode; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTRACE_MODE_READ ;
 int PTR_ERR (int ) ;
 struct proc_maps_private* __seq_open_private (struct file*,struct seq_operations const*,int) ;
 int proc_mem_open (struct inode*,int ) ;
 int seq_release_private (struct inode*,struct file*) ;

__attribute__((used)) static int proc_maps_open(struct inode *inode, struct file *file,
   const struct seq_operations *ops, int psize)
{
 struct proc_maps_private *priv = __seq_open_private(file, ops, psize);

 if (!priv)
  return -ENOMEM;

 priv->inode = inode;
 priv->mm = proc_mem_open(inode, PTRACE_MODE_READ);
 if (IS_ERR(priv->mm)) {
  int err = PTR_ERR(priv->mm);

  seq_release_private(inode, file);
  return err;
 }

 return 0;
}
