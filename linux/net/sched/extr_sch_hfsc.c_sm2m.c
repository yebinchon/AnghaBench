
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PSCHED_TICKS_PER_SEC ;
 int SM_SHIFT ;

__attribute__((used)) static u32
sm2m(u64 sm)
{
 u64 m;

 m = (sm * PSCHED_TICKS_PER_SEC) >> SM_SHIFT;
 return (u32)m;
}
