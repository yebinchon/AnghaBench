
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int cl_count; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_2__* dentry; } ;
struct file {TYPE_1__ f_path; struct seq_file* private_data; } ;
struct TYPE_6__ {struct rpc_clnt* private; } ;
struct TYPE_5__ {int d_lock; } ;


 int EINVAL ;
 TYPE_3__* RPC_I (struct inode*) ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 int d_unhashed (TYPE_2__*) ;
 int rpc_show_info ;
 int single_open (struct file*,int ,int *) ;
 int single_release (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
rpc_info_open(struct inode *inode, struct file *file)
{
 struct rpc_clnt *clnt = ((void*)0);
 int ret = single_open(file, rpc_show_info, ((void*)0));

 if (!ret) {
  struct seq_file *m = file->private_data;

  spin_lock(&file->f_path.dentry->d_lock);
  if (!d_unhashed(file->f_path.dentry))
   clnt = RPC_I(inode)->private;
  if (clnt != ((void*)0) && atomic_inc_not_zero(&clnt->cl_count)) {
   spin_unlock(&file->f_path.dentry->d_lock);
   m->private = clnt;
  } else {
   spin_unlock(&file->f_path.dentry->d_lock);
   single_release(inode, file);
   ret = -EINVAL;
  }
 }
 return ret;
}
