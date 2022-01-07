
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int generic_file_llseek_size (struct file*,int ,int,int,int) ;

__attribute__((used)) static loff_t empty_dir_llseek(struct file *file, loff_t offset, int whence)
{

 return generic_file_llseek_size(file, offset, whence, 2, 2);
}
