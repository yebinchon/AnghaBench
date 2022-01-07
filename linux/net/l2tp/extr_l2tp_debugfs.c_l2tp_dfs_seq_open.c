
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct l2tp_dfs_seq_data* private; } ;
struct l2tp_dfs_seq_data {int net; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {int pid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_1__* current ;
 int get_net_ns_by_pid (int ) ;
 int kfree (struct l2tp_dfs_seq_data*) ;
 struct l2tp_dfs_seq_data* kzalloc (int,int ) ;
 int l2tp_dfs_seq_ops ;
 int put_net (int ) ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int l2tp_dfs_seq_open(struct inode *inode, struct file *file)
{
 struct l2tp_dfs_seq_data *pd;
 struct seq_file *seq;
 int rc = -ENOMEM;

 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (pd == ((void*)0))
  goto out;




 pd->net = get_net_ns_by_pid(current->pid);
 if (IS_ERR(pd->net)) {
  rc = PTR_ERR(pd->net);
  goto err_free_pd;
 }

 rc = seq_open(file, &l2tp_dfs_seq_ops);
 if (rc)
  goto err_free_net;

 seq = file->private_data;
 seq->private = pd;

out:
 return rc;

err_free_net:
 put_net(pd->net);
err_free_pd:
 kfree(pd);
 goto out;
}
