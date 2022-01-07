
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _RET_IP_ ;
 void* __memmove (void*,void const*,size_t) ;
 int check_memory_region (unsigned long,size_t,int,int ) ;

void *memmove(void *dest, const void *src, size_t len)
{
 check_memory_region((unsigned long)src, len, 0, _RET_IP_);
 check_memory_region((unsigned long)dest, len, 1, _RET_IP_);

 return __memmove(dest, src, len);
}
