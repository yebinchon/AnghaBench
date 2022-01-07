
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ op; } ;
struct file {struct seq_file* private_data; } ;
typedef int loff_t ;


 int default_llseek (struct file*,int ,int) ;
 int seq_lseek (struct file*,int ,int) ;

__attribute__((used)) static loff_t pstore_file_llseek(struct file *file, loff_t off, int whence)
{
 struct seq_file *sf = file->private_data;

 if (sf->op)
  return seq_lseek(file, off, whence);
 return default_llseek(file, off, whence);
}
