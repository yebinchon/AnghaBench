
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ KASAN_SHADOW_START ;
 scalar_t__ KASAN_TAG_KERNEL ;
 scalar_t__ get_tag (void const*) ;
 scalar_t__* kasan_mem_to_shadow (void*) ;
 int kasan_report (unsigned long,size_t,int,unsigned long) ;
 void* kasan_shadow_to_mem (void*) ;
 void* reset_tag (void const*) ;
 scalar_t__ unlikely (int) ;

bool check_memory_region(unsigned long addr, size_t size, bool write,
    unsigned long ret_ip)
{
 u8 tag;
 u8 *shadow_first, *shadow_last, *shadow;
 void *untagged_addr;

 if (unlikely(size == 0))
  return 1;

 tag = get_tag((const void *)addr);
 if (tag == KASAN_TAG_KERNEL)
  return 1;

 untagged_addr = reset_tag((const void *)addr);
 if (unlikely(untagged_addr <
   kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
  kasan_report(addr, size, write, ret_ip);
  return 0;
 }
 shadow_first = kasan_mem_to_shadow(untagged_addr);
 shadow_last = kasan_mem_to_shadow(untagged_addr + size - 1);
 for (shadow = shadow_first; shadow <= shadow_last; shadow++) {
  if (*shadow != tag) {
   kasan_report(addr, size, write, ret_ip);
   return 0;
  }
 }

 return 1;
}
