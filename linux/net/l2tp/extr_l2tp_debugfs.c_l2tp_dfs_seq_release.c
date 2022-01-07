
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct l2tp_dfs_seq_data* private; } ;
struct l2tp_dfs_seq_data {scalar_t__ net; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int kfree (struct l2tp_dfs_seq_data*) ;
 int put_net (scalar_t__) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int l2tp_dfs_seq_release(struct inode *inode, struct file *file)
{
 struct l2tp_dfs_seq_data *pd;
 struct seq_file *seq;

 seq = file->private_data;
 pd = seq->private;
 if (pd->net)
  put_net(pd->net);
 kfree(pd);
 seq_release(inode, file);

 return 0;
}
