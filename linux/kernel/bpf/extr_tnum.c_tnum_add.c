
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int mask; int value; } ;


 struct tnum TNUM (int,int) ;

struct tnum tnum_add(struct tnum a, struct tnum b)
{
 u64 sm, sv, sigma, chi, mu;

 sm = a.mask + b.mask;
 sv = a.value + b.value;
 sigma = sm + sv;
 chi = sigma ^ sv;
 mu = chi | a.mask | b.mask;
 return TNUM(sv & ~mu, mu);
}
