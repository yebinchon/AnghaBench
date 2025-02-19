
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct seq_file {void* private; } ;
struct file {struct seq_file* private_data; } ;


 int GFP_KERNEL_ACCOUNT ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int seq_open (struct file*,struct seq_operations const*) ;

void *__seq_open_private(struct file *f, const struct seq_operations *ops,
  int psize)
{
 int rc;
 void *private;
 struct seq_file *seq;

 private = kzalloc(psize, GFP_KERNEL_ACCOUNT);
 if (private == ((void*)0))
  goto out;

 rc = seq_open(f, ops);
 if (rc < 0)
  goto out_free;

 seq = f->private_data;
 seq->private = private;
 return private;

out_free:
 kfree(private);
out:
 return ((void*)0);
}
