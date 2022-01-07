
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int * private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int kfree (int *) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int fscache_objlist_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;

 kfree(m->private);
 m->private = ((void*)0);
 return seq_release(inode, file);
}
