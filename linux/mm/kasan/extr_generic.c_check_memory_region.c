
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_memory_region_inline (unsigned long,size_t,int,unsigned long) ;

bool check_memory_region(unsigned long addr, size_t size, bool write,
    unsigned long ret_ip)
{
 return check_memory_region_inline(addr, size, write, ret_ip);
}
