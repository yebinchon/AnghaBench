
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;


 int call_int_hook (int ,int ,struct file*,int) ;
 int ima_read_file (struct file*,int) ;
 int kernel_read_file ;

int security_kernel_read_file(struct file *file, enum kernel_read_file_id id)
{
 int ret;

 ret = call_int_hook(kernel_read_file, 0, file, id);
 if (ret)
  return ret;
 return ima_read_file(file, id);
}
