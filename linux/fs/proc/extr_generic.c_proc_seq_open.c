
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int seq_ops; scalar_t__ state_size; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 int seq_open (struct file*,int ) ;
 int seq_open_private (struct file*,int ,scalar_t__) ;

__attribute__((used)) static int proc_seq_open(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *de = PDE(inode);

 if (de->state_size)
  return seq_open_private(file, de->seq_ops, de->state_size);
 return seq_open(file, de->seq_ops);
}
