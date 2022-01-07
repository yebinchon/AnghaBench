
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ rcv_wup; int snd_wnd; int max_window; int fastopen_rsk; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int lock; int qlen; } ;
struct request_sock_queue {TYPE_2__ fastopenq; } ;
struct request_sock {int rsk_refcnt; } ;
struct TYPE_12__ {scalar_t__ seq; } ;
struct TYPE_11__ {TYPE_1__* icsk_af_ops; struct request_sock_queue icsk_accept_queue; } ;
struct TYPE_10__ {int window; } ;
struct TYPE_9__ {int tfo_listener; scalar_t__ rcv_nxt; } ;
struct TYPE_7__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int *,int *,int*) ;} ;


 int BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB ;
 int ICSK_TIME_RETRANS ;
 int TCP_RTO_MAX ;
 TYPE_6__* TCP_SKB_CB (struct sk_buff*) ;
 int TCP_TIMEOUT_INIT ;
 TYPE_5__* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int ntohs (int ) ;
 int rcu_assign_pointer (int ,struct request_sock*) ;
 int refcount_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sock* stub1 (struct sock*,struct sk_buff*,struct request_sock*,int *,int *,int*) ;
 int tcp_fastopen_add_skb (struct sock*,struct sk_buff*) ;
 TYPE_4__* tcp_hdr (struct sk_buff*) ;
 int tcp_init_transfer (struct sock*,int ) ;
 TYPE_3__* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static struct sock *tcp_fastopen_create_child(struct sock *sk,
           struct sk_buff *skb,
           struct request_sock *req)
{
 struct tcp_sock *tp;
 struct request_sock_queue *queue = &inet_csk(sk)->icsk_accept_queue;
 struct sock *child;
 bool own_req;

 child = inet_csk(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, ((void*)0),
        ((void*)0), &own_req);
 if (!child)
  return ((void*)0);

 spin_lock(&queue->fastopenq.lock);
 queue->fastopenq.qlen++;
 spin_unlock(&queue->fastopenq.lock);





 tp = tcp_sk(child);

 rcu_assign_pointer(tp->fastopen_rsk, req);
 tcp_rsk(req)->tfo_listener = 1;




 tp->snd_wnd = ntohs(tcp_hdr(skb)->window);
 tp->max_window = tp->snd_wnd;





 inet_csk_reset_xmit_timer(child, ICSK_TIME_RETRANS,
      TCP_TIMEOUT_INIT, TCP_RTO_MAX);

 refcount_set(&req->rsk_refcnt, 2);


 tcp_init_transfer(child, BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB);

 tp->rcv_nxt = TCP_SKB_CB(skb)->seq + 1;

 tcp_fastopen_add_skb(child, skb);

 tcp_rsk(req)->rcv_nxt = tp->rcv_nxt;
 tp->rcv_wup = tp->rcv_nxt;



 return child;
}
