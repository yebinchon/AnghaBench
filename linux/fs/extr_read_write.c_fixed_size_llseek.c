
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int EINVAL ;



 int generic_file_llseek_size (struct file*,int ,int,int ,int ) ;

loff_t fixed_size_llseek(struct file *file, loff_t offset, int whence, loff_t size)
{
 switch (whence) {
 case 128: case 130: case 129:
  return generic_file_llseek_size(file, offset, whence,
      size, size);
 default:
  return -EINVAL;
 }
}
