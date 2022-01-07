
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;
typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;


 int call_int_hook (int ,int ,struct file*,char*,int ,int) ;
 int ima_post_read_file (struct file*,char*,int ,int) ;
 int kernel_post_read_file ;

int security_kernel_post_read_file(struct file *file, char *buf, loff_t size,
       enum kernel_read_file_id id)
{
 int ret;

 ret = call_int_hook(kernel_post_read_file, 0, file, buf, size, id);
 if (ret)
  return ret;
 return ima_post_read_file(file, buf, size, id);
}
