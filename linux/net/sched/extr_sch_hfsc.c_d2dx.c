
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int PSCHED_TICKS_PER_SEC ;
 int USEC_PER_SEC ;
 int do_div (int,int) ;

__attribute__((used)) static u64
d2dx(u32 d)
{
 u64 dx;

 dx = ((u64)d * PSCHED_TICKS_PER_SEC);
 dx += USEC_PER_SEC - 1;
 do_div(dx, USEC_PER_SEC);
 return dx;
}
