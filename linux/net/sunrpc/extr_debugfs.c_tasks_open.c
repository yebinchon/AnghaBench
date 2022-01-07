
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int cl_count; } ;
struct inode {struct rpc_clnt* i_private; } ;
struct file {struct seq_file* private_data; } ;


 int EINVAL ;
 int atomic_inc_not_zero (int *) ;
 int seq_open (struct file*,int *) ;
 int seq_release (struct inode*,struct file*) ;
 int tasks_seq_operations ;

__attribute__((used)) static int tasks_open(struct inode *inode, struct file *filp)
{
 int ret = seq_open(filp, &tasks_seq_operations);
 if (!ret) {
  struct seq_file *seq = filp->private_data;
  struct rpc_clnt *clnt = seq->private = inode->i_private;

  if (!atomic_inc_not_zero(&clnt->cl_count)) {
   seq_release(inode, filp);
   ret = -EINVAL;
  }
 }

 return ret;
}
