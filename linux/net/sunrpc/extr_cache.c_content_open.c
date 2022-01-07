
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct cache_detail* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct cache_detail {int owner; } ;


 int EACCES ;
 int cache_content_op ;
 int module_put (int ) ;
 int seq_open (struct file*,int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static int content_open(struct inode *inode, struct file *file,
   struct cache_detail *cd)
{
 struct seq_file *seq;
 int err;

 if (!cd || !try_module_get(cd->owner))
  return -EACCES;

 err = seq_open(file, &cache_content_op);
 if (err) {
  module_put(cd->owner);
  return err;
 }

 seq = file->private_data;
 seq->private = cd;
 return 0;
}
