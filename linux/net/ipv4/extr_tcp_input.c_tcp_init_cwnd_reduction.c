
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {int snd_ssthresh; scalar_t__ prr_out; scalar_t__ prr_delivered; int snd_cwnd; int prior_cwnd; scalar_t__ snd_cwnd_cnt; scalar_t__ tlp_high_seq; int snd_nxt; int high_seq; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_3__ {int (* ssthresh ) (struct sock*) ;} ;


 TYPE_2__* inet_csk (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_ecn_queue_cwr (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_init_cwnd_reduction(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tp->high_seq = tp->snd_nxt;
 tp->tlp_high_seq = 0;
 tp->snd_cwnd_cnt = 0;
 tp->prior_cwnd = tp->snd_cwnd;
 tp->prr_delivered = 0;
 tp->prr_out = 0;
 tp->snd_ssthresh = inet_csk(sk)->icsk_ca_ops->ssthresh(sk);
 tcp_ecn_queue_cwr(tp);
}
