
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct tcp_sock {int mss_cache; int rate_interval_us; int rate_delivered; } ;


 scalar_t__ READ_ONCE (int ) ;
 int USEC_PER_SEC ;
 int do_div (int,scalar_t__) ;

__attribute__((used)) static u64 tcp_compute_delivery_rate(const struct tcp_sock *tp)
{
 u32 rate = READ_ONCE(tp->rate_delivered);
 u32 intv = READ_ONCE(tp->rate_interval_us);
 u64 rate64 = 0;

 if (rate && intv) {
  rate64 = (u64)rate * tp->mss_cache * USEC_PER_SEC;
  do_div(rate64, intv);
 }
 return rate64;
}
