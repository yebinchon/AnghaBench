
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int PSCHED_TICKS_PER_SEC ;
 int SM_SHIFT ;
 int do_div (int,int) ;

__attribute__((used)) static u64
m2sm(u32 m)
{
 u64 sm;

 sm = ((u64)m << SM_SHIFT);
 sm += PSCHED_TICKS_PER_SEC - 1;
 do_div(sm, PSCHED_TICKS_PER_SEC);
 return sm;
}
