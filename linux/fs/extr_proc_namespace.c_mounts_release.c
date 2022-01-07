
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct proc_mounts* private; } ;
struct proc_mounts {int ns; int root; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int path_put (int *) ;
 int put_mnt_ns (int ) ;
 int seq_release_private (struct inode*,struct file*) ;

__attribute__((used)) static int mounts_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;
 struct proc_mounts *p = m->private;
 path_put(&p->root);
 put_mnt_ns(p->ns);
 return seq_release_private(inode, file);
}
