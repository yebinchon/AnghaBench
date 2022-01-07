
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct illinois {scalar_t__ base_rtt; int cnt_rtt; scalar_t__ sum_rtt; } ;


 int do_div (scalar_t__,int ) ;

__attribute__((used)) static inline u32 avg_delay(const struct illinois *ca)
{
 u64 t = ca->sum_rtt;

 do_div(t, ca->cnt_rtt);
 return t - ca->base_rtt;
}
