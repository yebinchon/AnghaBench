
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct bbr {unsigned int min_rtt_us; } ;


 int BBR_SCALE ;
 int BW_UNIT ;
 int TCP_INIT_CWND ;
 struct bbr* inet_csk_ca (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 bbr_bdp(struct sock *sk, u32 bw, int gain)
{
 struct bbr *bbr = inet_csk_ca(sk);
 u32 bdp;
 u64 w;







 if (unlikely(bbr->min_rtt_us == ~0U))
  return TCP_INIT_CWND;

 w = (u64)bw * bbr->min_rtt_us;




 bdp = (((w * gain) >> BBR_SCALE) + BW_UNIT - 1) / BW_UNIT;

 return bdp;
}
