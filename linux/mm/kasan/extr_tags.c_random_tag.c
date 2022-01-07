
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int KASAN_TAG_MAX ;
 int prng_state ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;

u8 random_tag(void)
{
 u32 state = this_cpu_read(prng_state);

 state = 1664525 * state + 1013904223;
 this_cpu_write(prng_state, state);

 return (u8)(state % (KASAN_TAG_MAX + 1));
}
