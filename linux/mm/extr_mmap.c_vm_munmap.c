
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vm_munmap (unsigned long,size_t,int) ;

int vm_munmap(unsigned long start, size_t len)
{
 return __vm_munmap(start, len, 0);
}
