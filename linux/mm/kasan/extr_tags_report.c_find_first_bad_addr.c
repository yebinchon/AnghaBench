
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int KASAN_SHADOW_SCALE_SIZE ;
 scalar_t__ get_tag (void*) ;
 scalar_t__ kasan_mem_to_shadow (void*) ;
 void* reset_tag (void*) ;

void *find_first_bad_addr(void *addr, size_t size)
{
 u8 tag = get_tag(addr);
 void *p = reset_tag(addr);
 void *end = p + size;

 while (p < end && tag == *(u8 *)kasan_mem_to_shadow(p))
  p += KASAN_SHADOW_SCALE_SIZE;
 return p;
}
