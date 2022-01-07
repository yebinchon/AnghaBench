
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_operations {int dummy; } ;
struct seq_file {struct pstore_private* private; } ;
struct pstore_private {TYPE_1__* record; } ;
struct inode {struct pstore_private* i_private; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ PSTORE_TYPE_FTRACE ;
 struct seq_operations pstore_ftrace_seq_ops ;
 int seq_open (struct file*,struct seq_operations const*) ;

__attribute__((used)) static int pstore_file_open(struct inode *inode, struct file *file)
{
 struct pstore_private *ps = inode->i_private;
 struct seq_file *sf;
 int err;
 const struct seq_operations *sops = ((void*)0);

 if (ps->record->type == PSTORE_TYPE_FTRACE)
  sops = &pstore_ftrace_seq_ops;

 err = seq_open(file, sops);
 if (err < 0)
  return err;

 sf = file->private_data;
 sf->private = ps;

 return 0;
}
