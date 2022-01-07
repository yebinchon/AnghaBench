
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int KASAN_SHADOW_SCALE_SIZE ;
 scalar_t__ kasan_mem_to_shadow (void*) ;

void *find_first_bad_addr(void *addr, size_t size)
{
 void *p = addr;

 while (p < addr + size && !(*(u8 *)kasan_mem_to_shadow(p)))
  p += KASAN_SHADOW_SCALE_SIZE;
 return p;
}
