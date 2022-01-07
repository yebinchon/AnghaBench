
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int data; int single_show; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int proc_single_open(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *de = PDE(inode);

 return single_open(file, de->single_show, de->data);
}
