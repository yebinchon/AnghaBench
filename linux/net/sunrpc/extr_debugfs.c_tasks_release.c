
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int rpc_release_client (struct rpc_clnt*) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int
tasks_release(struct inode *inode, struct file *filp)
{
 struct seq_file *seq = filp->private_data;
 struct rpc_clnt *clnt = seq->private;

 rpc_release_client(clnt);
 return seq_release(inode, filp);
}
