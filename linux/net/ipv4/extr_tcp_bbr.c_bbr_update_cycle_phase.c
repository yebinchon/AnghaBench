
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;
struct bbr {scalar_t__ mode; } ;


 scalar_t__ BBR_PROBE_BW ;
 int bbr_advance_cycle_phase (struct sock*) ;
 scalar_t__ bbr_is_next_cycle_phase (struct sock*,struct rate_sample const*) ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bbr_update_cycle_phase(struct sock *sk,
       const struct rate_sample *rs)
{
 struct bbr *bbr = inet_csk_ca(sk);

 if (bbr->mode == BBR_PROBE_BW && bbr_is_next_cycle_phase(sk, rs))
  bbr_advance_cycle_phase(sk);
}
