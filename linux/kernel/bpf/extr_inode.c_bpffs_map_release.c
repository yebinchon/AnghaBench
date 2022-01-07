
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int map_iter (struct seq_file*) ;
 int map_iter_free (int ) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int bpffs_map_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;

 map_iter_free(map_iter(m));

 return seq_release(inode, file);
}
