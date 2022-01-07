
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int total_retrans; int snd_cwnd; int snd_cwnd_stamp; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_af_ops; } ;
struct TYPE_2__ {int (* rebuild_header ) (struct sock*) ;} ;


 int __sk_dst_get (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_call_bpf (struct sock*,int,int ,int *) ;
 int tcp_init_buffer_space (struct sock*) ;
 int tcp_init_congestion_control (struct sock*) ;
 int tcp_init_cwnd (struct tcp_sock*,int ) ;
 int tcp_init_metrics (struct sock*) ;
 int tcp_jiffies32 ;
 int tcp_mtup_init (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_init_transfer(struct sock *sk, int bpf_op)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);

 tcp_mtup_init(sk);
 icsk->icsk_af_ops->rebuild_header(sk);
 tcp_init_metrics(sk);







 if (tp->total_retrans > 1 && tp->undo_marker)
  tp->snd_cwnd = 1;
 else
  tp->snd_cwnd = tcp_init_cwnd(tp, __sk_dst_get(sk));
 tp->snd_cwnd_stamp = tcp_jiffies32;

 tcp_call_bpf(sk, bpf_op, 0, ((void*)0));
 tcp_init_congestion_control(sk);
 tcp_init_buffer_space(sk);
}
