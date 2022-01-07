
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct proc_maps_private {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int proc_maps_open (struct inode*,struct file*,struct seq_operations const*,int) ;

__attribute__((used)) static int do_maps_open(struct inode *inode, struct file *file,
   const struct seq_operations *ops)
{
 return proc_maps_open(inode, file, ops,
    sizeof(struct proc_maps_private));
}
