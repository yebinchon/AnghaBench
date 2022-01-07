
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;



 int selinux_kernel_module_from_file (struct file*) ;

__attribute__((used)) static int selinux_kernel_read_file(struct file *file,
        enum kernel_read_file_id id)
{
 int rc = 0;

 switch (id) {
 case 128:
  rc = selinux_kernel_module_from_file(file);
  break;
 default:
  break;
 }

 return rc;
}
