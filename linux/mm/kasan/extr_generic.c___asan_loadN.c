
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _RET_IP_ ;
 int check_memory_region (unsigned long,size_t,int,int ) ;

void __asan_loadN(unsigned long addr, size_t size)
{
 check_memory_region(addr, size, 0, _RET_IP_);
}
