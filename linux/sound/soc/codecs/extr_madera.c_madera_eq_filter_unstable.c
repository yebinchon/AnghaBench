
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;
typedef int __be16 ;


 int abs (int) ;
 int be16_to_cpu (int ) ;

__attribute__((used)) static bool madera_eq_filter_unstable(bool mode, __be16 _a, __be16 _b)
{
 s16 a = be16_to_cpu(_a);
 s16 b = be16_to_cpu(_b);

 if (!mode) {
  return abs(a) >= 4096;
 } else {
  if (abs(b) >= 4096)
   return 1;

  return (abs((a << 16) / (4096 - b)) >= 4096 << 4);
 }
}
