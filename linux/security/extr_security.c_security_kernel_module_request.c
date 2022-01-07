
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_int_hook (int ,int ,char*) ;
 int integrity_kernel_module_request (char*) ;
 int kernel_module_request ;

int security_kernel_module_request(char *kmod_name)
{
 int ret;

 ret = call_int_hook(kernel_module_request, 0, kmod_name);
 if (ret)
  return ret;
 return integrity_kernel_module_request(kmod_name);
}
