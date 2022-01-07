
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tnum {scalar_t__ mask; scalar_t__ value; } ;
typedef int s64 ;


 struct tnum TNUM (int,int) ;

struct tnum tnum_arshift(struct tnum a, u8 min_shift)
{





 return TNUM((s64)a.value >> min_shift, (s64)a.mask >> min_shift);
}
