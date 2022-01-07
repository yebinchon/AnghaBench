
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_clock {int dummy; } ;
typedef int clockid_t ;


 int const ARRAY_SIZE (struct k_clock const**) ;
 int const CLOCKFD ;
 int const CLOCKFD_MASK ;
 size_t array_index_nospec (int,int const) ;
 struct k_clock const clock_posix_cpu ;
 struct k_clock const clock_posix_dynamic ;
 struct k_clock const** posix_clocks ;

__attribute__((used)) static const struct k_clock *clockid_to_kclock(const clockid_t id)
{
 clockid_t idx = id;

 if (id < 0) {
  return (id & CLOCKFD_MASK) == CLOCKFD ?
   &clock_posix_dynamic : &clock_posix_cpu;
 }

 if (id >= ARRAY_SIZE(posix_clocks))
  return ((void*)0);

 return posix_clocks[array_index_nospec(idx, ARRAY_SIZE(posix_clocks))];
}
