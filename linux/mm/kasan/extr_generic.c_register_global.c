
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_global {scalar_t__ size_with_redzone; scalar_t__ beg; int size; } ;


 int KASAN_GLOBAL_REDZONE ;
 int KASAN_SHADOW_SCALE_SIZE ;
 int kasan_poison_shadow (scalar_t__,scalar_t__,int ) ;
 int kasan_unpoison_shadow (scalar_t__,int ) ;
 size_t round_up (int ,int ) ;

__attribute__((used)) static void register_global(struct kasan_global *global)
{
 size_t aligned_size = round_up(global->size, KASAN_SHADOW_SCALE_SIZE);

 kasan_unpoison_shadow(global->beg, global->size);

 kasan_poison_shadow(global->beg + aligned_size,
  global->size_with_redzone - aligned_size,
  KASAN_GLOBAL_REDZONE);
}
