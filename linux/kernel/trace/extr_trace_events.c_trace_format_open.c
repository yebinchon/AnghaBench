
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct file* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int seq_open (struct file*,int *) ;
 int trace_format_seq_ops ;

__attribute__((used)) static int trace_format_open(struct inode *inode, struct file *file)
{
 struct seq_file *m;
 int ret;



 ret = seq_open(file, &trace_format_seq_ops);
 if (ret < 0)
  return ret;

 m = file->private_data;
 m->private = file;

 return 0;
}
