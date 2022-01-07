
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int (* show ) (struct seq_file*,void*) ;int stop; int next; int start; } ;
struct seq_file {void* private; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int kfree (struct seq_operations*) ;
 struct seq_operations* kmalloc (int,int ) ;
 int seq_open (struct file*,struct seq_operations*) ;
 int single_next ;
 int single_start ;
 int single_stop ;

int single_open(struct file *file, int (*show)(struct seq_file *, void *),
  void *data)
{
 struct seq_operations *op = kmalloc(sizeof(*op), GFP_KERNEL_ACCOUNT);
 int res = -ENOMEM;

 if (op) {
  op->start = single_start;
  op->next = single_next;
  op->stop = single_stop;
  op->show = show;
  res = seq_open(file, op);
  if (!res)
   ((struct seq_file *)file->private_data)->private = data;
  else
   kfree(op);
 }
 return res;
}
