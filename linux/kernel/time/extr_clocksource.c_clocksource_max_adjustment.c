
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clocksource {scalar_t__ mult; } ;


 int do_div (int,int) ;

__attribute__((used)) static u32 clocksource_max_adjustment(struct clocksource *cs)
{
 u64 ret;



 ret = (u64)cs->mult * 11;
 do_div(ret,100);
 return (u32)ret;
}
