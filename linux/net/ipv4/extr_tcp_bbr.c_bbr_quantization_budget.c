
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ mode; scalar_t__ cycle_idx; } ;


 scalar_t__ BBR_PROBE_BW ;
 int bbr_tso_segs_goal (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static u32 bbr_quantization_budget(struct sock *sk, u32 cwnd)
{
 struct bbr *bbr = inet_csk_ca(sk);


 cwnd += 3 * bbr_tso_segs_goal(sk);


 cwnd = (cwnd + 1) & ~1U;


 if (bbr->mode == BBR_PROBE_BW && bbr->cycle_idx == 0)
  cwnd += 2;

 return cwnd;
}
