
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uaccess_kernel () ;

__attribute__((used)) static bool tomoyo_kernel_service(void)
{

 return uaccess_kernel();
}
