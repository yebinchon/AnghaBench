
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct sock {int dummy; } ;
struct TYPE_2__ {unsigned int mss_cache; } ;


 unsigned int BBR_SCALE ;
 unsigned int BW_SCALE ;
 int USEC_PER_SEC ;
 int bbr_pacing_margin_percent ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static u64 bbr_rate_bytes_per_sec(struct sock *sk, u64 rate, int gain)
{
 unsigned int mss = tcp_sk(sk)->mss_cache;

 rate *= mss;
 rate *= gain;
 rate >>= BBR_SCALE;
 rate *= USEC_PER_SEC / 100 * (100 - bbr_pacing_margin_percent);
 return rate >> BW_SCALE;
}
