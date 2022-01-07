
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PSCHED_TICKS_PER_SEC ;
 int USEC_PER_SEC ;
 int do_div (int,int ) ;

__attribute__((used)) static u32
dx2d(u64 dx)
{
 u64 d;

 d = dx * USEC_PER_SEC;
 do_div(d, PSCHED_TICKS_PER_SEC);
 return (u32)d;
}
