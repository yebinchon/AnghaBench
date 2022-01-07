
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct seq_file {struct svc_serv* private; } ;
struct file {scalar_t__ private_data; } ;


 int seq_open (struct file*,int *) ;
 int svc_pool_stats_seq_ops ;

int svc_pool_stats_open(struct svc_serv *serv, struct file *file)
{
 int err;

 err = seq_open(file, &svc_pool_stats_seq_ops);
 if (!err)
  ((struct seq_file *) file->private_data)->private = serv;
 return err;
}
