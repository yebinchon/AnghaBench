
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;


 int bbr_check_drain (struct sock*,struct rate_sample const*) ;
 int bbr_check_full_bw_reached (struct sock*,struct rate_sample const*) ;
 int bbr_update_ack_aggregation (struct sock*,struct rate_sample const*) ;
 int bbr_update_bw (struct sock*,struct rate_sample const*) ;
 int bbr_update_cycle_phase (struct sock*,struct rate_sample const*) ;
 int bbr_update_gains (struct sock*) ;
 int bbr_update_min_rtt (struct sock*,struct rate_sample const*) ;

__attribute__((used)) static void bbr_update_model(struct sock *sk, const struct rate_sample *rs)
{
 bbr_update_bw(sk, rs);
 bbr_update_ack_aggregation(sk, rs);
 bbr_update_cycle_phase(sk, rs);
 bbr_check_full_bw_reached(sk, rs);
 bbr_check_drain(sk, rs);
 bbr_update_min_rtt(sk, rs);
 bbr_update_gains(sk);
}
