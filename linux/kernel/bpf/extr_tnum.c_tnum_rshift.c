
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tnum {int value; int mask; } ;


 struct tnum TNUM (int,int) ;

struct tnum tnum_rshift(struct tnum a, u8 shift)
{
 return TNUM(a.value >> shift, a.mask >> shift);
}
