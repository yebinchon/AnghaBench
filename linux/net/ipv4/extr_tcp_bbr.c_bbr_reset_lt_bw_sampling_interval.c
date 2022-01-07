
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int lost; int delivered; int delivered_mstamp; } ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ lt_rtt_cnt; int lt_last_lost; int lt_last_delivered; int lt_last_stamp; } ;


 int USEC_PER_MSEC ;
 int div_u64 (int ,int ) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_reset_lt_bw_sampling_interval(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);

 bbr->lt_last_stamp = div_u64(tp->delivered_mstamp, USEC_PER_MSEC);
 bbr->lt_last_delivered = tp->delivered;
 bbr->lt_last_lost = tp->lost;
 bbr->lt_rtt_cnt = 0;
}
