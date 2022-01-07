
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kernel_load_data_id { ____Placeholder_kernel_load_data_id } kernel_load_data_id ;



 int selinux_kernel_module_from_file (int *) ;

__attribute__((used)) static int selinux_kernel_load_data(enum kernel_load_data_id id)
{
 int rc = 0;

 switch (id) {
 case 128:
  rc = selinux_kernel_module_from_file(((void*)0));
 default:
  break;
 }

 return rc;
}
