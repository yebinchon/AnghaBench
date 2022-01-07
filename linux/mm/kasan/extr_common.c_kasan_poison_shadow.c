
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __memset (void*,int ,int) ;
 void* kasan_mem_to_shadow (void const*) ;
 void* reset_tag (void const*) ;

void kasan_poison_shadow(const void *address, size_t size, u8 value)
{
 void *shadow_start, *shadow_end;






 address = reset_tag(address);

 shadow_start = kasan_mem_to_shadow(address);
 shadow_end = kasan_mem_to_shadow(address + size);

 __memset(shadow_start, value, shadow_end - shadow_start);
}
