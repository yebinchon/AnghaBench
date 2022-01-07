
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_sock {scalar_t__ pushed_seq; int snd_nxt; scalar_t__ write_seq; scalar_t__ fastopen_req; int retrans_stamp; struct sk_buff* repair; } ;
struct sock {int sk_allocation; int tcp_rtx_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ seq; } ;
struct TYPE_5__ {int icsk_rto; TYPE_1__* icsk_af_ops; } ;
struct TYPE_4__ {scalar_t__ (* rebuild_header ) (struct sock*) ;} ;


 int BPF_SOCK_OPS_TCP_CONNECT_CB ;
 int ECONNREFUSED ;
 int EHOSTUNREACH ;
 int ENOBUFS ;
 int ICSK_TIME_RETRANS ;
 int TCPHDR_SYN ;
 int TCP_INC_STATS (int ,int ) ;
 int TCP_MIB_ACTIVEOPENS ;
 int TCP_RTO_MAX ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;
 int WRITE_ONCE (int ,scalar_t__) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 struct sk_buff* sk_stream_alloc_skb (struct sock*,int ,int ,int) ;
 int sock_net (struct sock*) ;
 scalar_t__ stub1 (struct sock*) ;
 int tcp_call_bpf (struct sock*,int ,int ,int *) ;
 int tcp_connect_init (struct sock*) ;
 int tcp_connect_queue_skb (struct sock*,struct sk_buff*) ;
 int tcp_ecn_send_syn (struct sock*,struct sk_buff*) ;
 int tcp_finish_connect (struct sock*,int *) ;
 int tcp_init_nondata_skb (struct sk_buff*,int ,int ) ;
 int tcp_mstamp_refresh (struct tcp_sock*) ;
 int tcp_rbtree_insert (int *,struct sk_buff*) ;
 struct sk_buff* tcp_send_head (struct sock*) ;
 int tcp_send_syn_data (struct sock*,struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp (struct tcp_sock*) ;
 int tcp_transmit_skb (struct sock*,struct sk_buff*,int,int ) ;
 scalar_t__ unlikely (int) ;

int tcp_connect(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *buff;
 int err;

 tcp_call_bpf(sk, BPF_SOCK_OPS_TCP_CONNECT_CB, 0, ((void*)0));

 if (inet_csk(sk)->icsk_af_ops->rebuild_header(sk))
  return -EHOSTUNREACH;

 tcp_connect_init(sk);

 if (unlikely(tp->repair)) {
  tcp_finish_connect(sk, ((void*)0));
  return 0;
 }

 buff = sk_stream_alloc_skb(sk, 0, sk->sk_allocation, 1);
 if (unlikely(!buff))
  return -ENOBUFS;

 tcp_init_nondata_skb(buff, tp->write_seq++, TCPHDR_SYN);
 tcp_mstamp_refresh(tp);
 tp->retrans_stamp = tcp_time_stamp(tp);
 tcp_connect_queue_skb(sk, buff);
 tcp_ecn_send_syn(sk, buff);
 tcp_rbtree_insert(&sk->tcp_rtx_queue, buff);


 err = tp->fastopen_req ? tcp_send_syn_data(sk, buff) :
       tcp_transmit_skb(sk, buff, 1, sk->sk_allocation);
 if (err == -ECONNREFUSED)
  return err;




 WRITE_ONCE(tp->snd_nxt, tp->write_seq);
 tp->pushed_seq = tp->write_seq;
 buff = tcp_send_head(sk);
 if (unlikely(buff)) {
  WRITE_ONCE(tp->snd_nxt, TCP_SKB_CB(buff)->seq);
  tp->pushed_seq = TCP_SKB_CB(buff)->seq;
 }
 TCP_INC_STATS(sock_net(sk), TCP_MIB_ACTIVEOPENS);


 inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
      inet_csk(sk)->icsk_rto, TCP_RTO_MAX);
 return 0;
}
