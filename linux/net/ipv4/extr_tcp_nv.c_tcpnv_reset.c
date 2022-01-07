
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpnv {int nv_last_snd_una; scalar_t__ nv_eval_call_cnt; int nv_rtt_start_seq; scalar_t__ nv_rtt_max_rate; scalar_t__ nv_last_rtt; scalar_t__ nv_rtt_cnt; scalar_t__ nv_no_cong_cnt; scalar_t__ nv_reset; } ;
struct tcp_sock {int snd_una; } ;
struct sock {int dummy; } ;


 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline void tcpnv_reset(struct tcpnv *ca, struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 ca->nv_reset = 0;
 ca->nv_no_cong_cnt = 0;
 ca->nv_rtt_cnt = 0;
 ca->nv_last_rtt = 0;
 ca->nv_rtt_max_rate = 0;
 ca->nv_rtt_start_seq = tp->snd_una;
 ca->nv_eval_call_cnt = 0;
 ca->nv_last_snd_una = tp->snd_una;
}
