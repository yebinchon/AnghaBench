
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {char* buf; size_t size; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int kvfree (char*) ;
 char* seq_buf_alloc (size_t) ;
 int single_open (struct file*,int (*) (struct seq_file*,void*),void*) ;

int single_open_size(struct file *file, int (*show)(struct seq_file *, void *),
  void *data, size_t size)
{
 char *buf = seq_buf_alloc(size);
 int ret;
 if (!buf)
  return -ENOMEM;
 ret = single_open(file, show, data);
 if (ret) {
  kvfree(buf);
  return ret;
 }
 ((struct seq_file *)file->private_data)->buf = buf;
 ((struct seq_file *)file->private_data)->size = size;
 return 0;
}
