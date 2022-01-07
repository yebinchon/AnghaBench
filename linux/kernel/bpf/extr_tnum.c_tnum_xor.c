
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int value; int mask; } ;


 struct tnum TNUM (int,int) ;

struct tnum tnum_xor(struct tnum a, struct tnum b)
{
 u64 v, mu;

 v = a.value ^ b.value;
 mu = a.mask | b.mask;
 return TNUM(v & ~mu, mu);
}
