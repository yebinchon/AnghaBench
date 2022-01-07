
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kernel_load_data_id { ____Placeholder_kernel_load_data_id } kernel_load_data_id ;


 int call_int_hook (int ,int ,int) ;
 int ima_load_data (int) ;
 int kernel_load_data ;

int security_kernel_load_data(enum kernel_load_data_id id)
{
 int ret;

 ret = call_int_hook(kernel_load_data, 0, id);
 if (ret)
  return ret;
 return ima_load_data(id);
}
