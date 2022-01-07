
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;


 scalar_t__ LOAD_AVG_MAX ;
 scalar_t__ decay_load (scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 __accumulate_pelt_segments(u64 periods, u32 d1, u32 d3)
{
 u32 c1, c2, c3 = d3;




 c1 = decay_load((u64)d1, periods);
 c2 = LOAD_AVG_MAX - decay_load(LOAD_AVG_MAX, periods) - 1024;

 return c1 + c2 + c3;
}
