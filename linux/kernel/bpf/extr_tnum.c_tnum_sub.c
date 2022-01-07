
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int value; int mask; } ;


 struct tnum TNUM (int,int) ;

struct tnum tnum_sub(struct tnum a, struct tnum b)
{
 u64 dv, alpha, beta, chi, mu;

 dv = a.value - b.value;
 alpha = dv + a.mask;
 beta = dv - b.mask;
 chi = alpha ^ beta;
 mu = chi | a.mask | b.mask;
 return TNUM(dv & ~mu, mu);
}
