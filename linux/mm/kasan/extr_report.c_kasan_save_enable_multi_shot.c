
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASAN_BIT_MULTI_SHOT ;
 int kasan_flags ;
 int test_and_set_bit (int ,int *) ;

bool kasan_save_enable_multi_shot(void)
{
 return test_and_set_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags);
}
