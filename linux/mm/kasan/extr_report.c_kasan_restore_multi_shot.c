
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASAN_BIT_MULTI_SHOT ;
 int clear_bit (int ,int *) ;
 int kasan_flags ;

void kasan_restore_multi_shot(bool enabled)
{
 if (!enabled)
  clear_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags);
}
