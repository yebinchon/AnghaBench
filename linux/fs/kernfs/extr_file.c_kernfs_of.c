
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {int dummy; } ;
struct file {scalar_t__ private_data; } ;



__attribute__((used)) static struct kernfs_open_file *kernfs_of(struct file *file)
{
 return ((struct seq_file *)file->private_data)->private;
}
