
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int CONFIG_KASAN_SW_TAGS ;
 scalar_t__ IS_ENABLED (int ) ;
 size_t KASAN_SHADOW_MASK ;
 size_t get_tag (void const*) ;
 scalar_t__ kasan_mem_to_shadow (void const*) ;
 int kasan_poison_shadow (void const*,size_t,size_t) ;
 void* reset_tag (void const*) ;

void kasan_unpoison_shadow(const void *address, size_t size)
{
 u8 tag = get_tag(address);






 address = reset_tag(address);

 kasan_poison_shadow(address, size, tag);

 if (size & KASAN_SHADOW_MASK) {
  u8 *shadow = (u8 *)kasan_mem_to_shadow(address + size);

  if (IS_ENABLED(CONFIG_KASAN_SW_TAGS))
   *shadow = tag;
  else
   *shadow = size & KASAN_SHADOW_MASK;
 }
}
