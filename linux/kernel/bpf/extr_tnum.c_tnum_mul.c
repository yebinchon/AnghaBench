
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int value; int mask; } ;


 struct tnum TNUM (int,int ) ;
 struct tnum hma (struct tnum,int,int) ;

struct tnum tnum_mul(struct tnum a, struct tnum b)
{
 struct tnum acc;
 u64 pi;

 pi = a.value * b.value;
 acc = hma(TNUM(pi, 0), a.mask, b.mask | b.value);
 return hma(acc, b.mask, a.value);
}
