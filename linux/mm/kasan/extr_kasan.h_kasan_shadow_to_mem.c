
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long KASAN_SHADOW_OFFSET ;
 unsigned long KASAN_SHADOW_SCALE_SHIFT ;

__attribute__((used)) static inline const void *kasan_shadow_to_mem(const void *shadow_addr)
{
 return (void *)(((unsigned long)shadow_addr - KASAN_SHADOW_OFFSET)
  << KASAN_SHADOW_SCALE_SHIFT);
}
