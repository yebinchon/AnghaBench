
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int buf; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int kmem_cache_free (int ,struct seq_file*) ;
 int kvfree (int ) ;
 int seq_file_cache ;

int seq_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = file->private_data;
 kvfree(m->buf);
 kmem_cache_free(seq_file_cache, m);
 return 0;
}
