
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;
struct bbr {scalar_t__ mode; } ;
struct TYPE_3__ {scalar_t__ snd_ssthresh; } ;


 scalar_t__ BBR_DRAIN ;
 scalar_t__ BBR_STARTUP ;
 int BBR_UNIT ;
 scalar_t__ bbr_full_bw_reached (struct sock*) ;
 scalar_t__ bbr_inflight (struct sock*,int ,int ) ;
 int bbr_max_bw (struct sock*) ;
 scalar_t__ bbr_packets_in_net_at_edt (struct sock*,int ) ;
 int bbr_reset_probe_bw_mode (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int tcp_packets_in_flight (TYPE_1__*) ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_check_drain(struct sock *sk, const struct rate_sample *rs)
{
 struct bbr *bbr = inet_csk_ca(sk);

 if (bbr->mode == BBR_STARTUP && bbr_full_bw_reached(sk)) {
  bbr->mode = BBR_DRAIN;
  tcp_sk(sk)->snd_ssthresh =
    bbr_inflight(sk, bbr_max_bw(sk), BBR_UNIT);
 }
 if (bbr->mode == BBR_DRAIN &&
     bbr_packets_in_net_at_edt(sk, tcp_packets_in_flight(tcp_sk(sk))) <=
     bbr_inflight(sk, bbr_max_bw(sk), BBR_UNIT))
  bbr_reset_probe_bw_mode(sk);
}
