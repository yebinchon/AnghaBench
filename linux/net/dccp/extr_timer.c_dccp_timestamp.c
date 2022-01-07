
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int dccp_timestamp_seed ;
 int do_div (int ,int) ;
 int ktime_get_real () ;
 int ktime_us_delta (int ,int ) ;

u32 dccp_timestamp(void)
{
 u64 delta = (u64)ktime_us_delta(ktime_get_real(), dccp_timestamp_seed);

 do_div(delta, 10);
 return delta;
}
