
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comp_t ;


 int EXPSIZE ;
 int MANTSIZE ;
 unsigned long MAXFRACT ;

__attribute__((used)) static comp_t encode_comp_t(unsigned long value)
{
 int exp, rnd;

 exp = rnd = 0;
 while (value > MAXFRACT) {
  rnd = value & (1 << (EXPSIZE - 1));
  value >>= EXPSIZE;
  exp++;
 }




 if (rnd && (++value > MAXFRACT)) {
  value >>= EXPSIZE;
  exp++;
 }




 exp <<= MANTSIZE;
 exp += value;
 return exp;
}
