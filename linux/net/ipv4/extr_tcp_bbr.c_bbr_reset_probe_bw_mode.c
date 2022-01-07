
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bbr {int cycle_idx; int mode; } ;


 int BBR_PROBE_BW ;
 int CYCLE_LEN ;
 int bbr_advance_cycle_phase (struct sock*) ;
 int bbr_cycle_rand ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int prandom_u32_max (int ) ;

__attribute__((used)) static void bbr_reset_probe_bw_mode(struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 bbr->mode = BBR_PROBE_BW;
 bbr->cycle_idx = CYCLE_LEN - 1 - prandom_u32_max(bbr_cycle_rand);
 bbr_advance_cycle_phase(sk);
}
