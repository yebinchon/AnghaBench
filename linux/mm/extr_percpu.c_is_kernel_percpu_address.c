
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __is_kernel_percpu_address (unsigned long,int *) ;

bool is_kernel_percpu_address(unsigned long addr)
{
 return __is_kernel_percpu_address(addr, ((void*)0));
}
