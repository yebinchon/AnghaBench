
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _RET_IP_ ;
 void* __memset (void*,int,size_t) ;
 int check_memory_region (unsigned long,size_t,int,int ) ;

void *memset(void *addr, int c, size_t len)
{
 check_memory_region((unsigned long)addr, len, 1, _RET_IP_);

 return __memset(addr, c, len);
}
