
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kasan_unpoison_shadow (void const*,int) ;
 scalar_t__ unlikely (int) ;

void __asan_allocas_unpoison(const void *stack_top, const void *stack_bottom)
{
 if (unlikely(!stack_top || stack_top > stack_bottom))
  return;

 kasan_unpoison_shadow(stack_top, stack_bottom - stack_top);
}
