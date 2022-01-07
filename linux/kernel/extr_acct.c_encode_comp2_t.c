
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned long comp2_t ;


 int EXPSIZE2 ;
 int MANTSIZE2 ;
 int MAXEXP2 ;
 int MAXFRACT2 ;

__attribute__((used)) static comp2_t encode_comp2_t(u64 value)
{
 int exp, rnd;

 exp = (value > (MAXFRACT2>>1));
 rnd = 0;
 while (value > MAXFRACT2) {
  rnd = value & 1;
  value >>= 1;
  exp++;
 }




 if (rnd && (++value > MAXFRACT2)) {
  value >>= 1;
  exp++;
 }

 if (exp > MAXEXP2) {

  return (1ul << (MANTSIZE2+EXPSIZE2-1)) - 1;
 } else {
  return (value & (MAXFRACT2>>1)) | (exp << (MANTSIZE2-1));
 }
}
