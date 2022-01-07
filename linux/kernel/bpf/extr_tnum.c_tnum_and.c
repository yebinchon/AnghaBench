
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int value; int mask; } ;


 struct tnum TNUM (int,int) ;

struct tnum tnum_and(struct tnum a, struct tnum b)
{
 u64 alpha, beta, v;

 alpha = a.value | a.mask;
 beta = b.value | b.mask;
 v = a.value & b.value;
 return TNUM(v, alpha & beta & ~v);
}
