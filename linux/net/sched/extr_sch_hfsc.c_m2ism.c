
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int HT_INFINITY ;
 int ISM_SHIFT ;
 scalar_t__ PSCHED_TICKS_PER_SEC ;
 int do_div (int,int ) ;

__attribute__((used)) static u64
m2ism(u32 m)
{
 u64 ism;

 if (m == 0)
  ism = HT_INFINITY;
 else {
  ism = ((u64)PSCHED_TICKS_PER_SEC << ISM_SHIFT);
  ism += m - 1;
  do_div(ism, m);
 }
 return ism;
}
