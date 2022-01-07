
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct seq_file {struct file* file; struct seq_operations const* op; int lock; } ;
struct file {int f_mode; scalar_t__ f_version; struct seq_file* private_data; } ;


 int ENOMEM ;
 int FMODE_PWRITE ;
 int GFP_KERNEL ;
 int WARN_ON (struct seq_file*) ;
 struct seq_file* kmem_cache_zalloc (int ,int ) ;
 int mutex_init (int *) ;
 int seq_file_cache ;

int seq_open(struct file *file, const struct seq_operations *op)
{
 struct seq_file *p;

 WARN_ON(file->private_data);

 p = kmem_cache_zalloc(seq_file_cache, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 file->private_data = p;

 mutex_init(&p->lock);
 p->op = op;



 p->file = file;






 file->f_version = 0;
 file->f_mode &= ~FMODE_PWRITE;
 return 0;
}
