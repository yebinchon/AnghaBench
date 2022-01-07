
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct rpc_clnt {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int rpc_release_client (struct rpc_clnt*) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int
rpc_info_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;
 struct rpc_clnt *clnt = (struct rpc_clnt *)m->private;

 if (clnt)
  rpc_release_client(clnt);
 return single_release(inode, file);
}
