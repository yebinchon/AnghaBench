
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KASAN_SHADOW_START ;
 void const* kasan_shadow_to_mem (void*) ;

__attribute__((used)) static inline bool addr_has_shadow(const void *addr)
{
 return (addr >= kasan_shadow_to_mem((void *)KASAN_SHADOW_START));
}
