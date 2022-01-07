
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct timer_list {int dummy; } ;
struct sock {int sk_max_ack_backlog; } ;
struct request_sock_queue {int young; int rskq_defer_accept; } ;
struct request_sock {int num_timeout; int rsk_timer; TYPE_2__* rsk_ops; struct sock* rsk_listener; } ;
struct TYPE_4__ {int sysctl_tcp_synack_retries; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {scalar_t__ icsk_syn_retries; struct request_sock_queue icsk_accept_queue; } ;
struct TYPE_6__ {scalar_t__ acked; } ;
struct TYPE_5__ {int (* syn_ack_timeout ) (struct request_sock*) ;} ;


 int READ_ONCE (int ) ;
 scalar_t__ TCP_LISTEN ;
 int TCP_RTO_MAX ;
 int TCP_TIMEOUT_INIT ;
 int atomic_dec (int *) ;
 struct request_sock* from_timer (int ,struct timer_list*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_drop_and_put (struct sock*,struct request_sock*) ;
 TYPE_3__* inet_rsk (struct request_sock*) ;
 int inet_rtx_syn_ack (struct sock*,struct request_sock*) ;
 scalar_t__ inet_sk_state_load (struct sock*) ;
 scalar_t__ jiffies ;
 int max (unsigned int,int ) ;
 unsigned long min (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 struct request_sock* req ;
 int reqsk_queue_len (struct request_sock_queue*) ;
 int reqsk_queue_len_young (struct request_sock_queue*) ;
 int rsk_timer ;
 struct net* sock_net (struct sock*) ;
 int stub1 (struct request_sock*) ;
 int syn_ack_recalc (struct request_sock*,int,int,int,int*,int*) ;

__attribute__((used)) static void reqsk_timer_handler(struct timer_list *t)
{
 struct request_sock *req = from_timer(req, t, rsk_timer);
 struct sock *sk_listener = req->rsk_listener;
 struct net *net = sock_net(sk_listener);
 struct inet_connection_sock *icsk = inet_csk(sk_listener);
 struct request_sock_queue *queue = &icsk->icsk_accept_queue;
 int qlen, expire = 0, resend = 0;
 int max_retries, thresh;
 u8 defer_accept;

 if (inet_sk_state_load(sk_listener) != TCP_LISTEN)
  goto drop;

 max_retries = icsk->icsk_syn_retries ? : net->ipv4.sysctl_tcp_synack_retries;
 thresh = max_retries;
 qlen = reqsk_queue_len(queue);
 if ((qlen << 1) > max(8U, sk_listener->sk_max_ack_backlog)) {
  int young = reqsk_queue_len_young(queue) << 1;

  while (thresh > 2) {
   if (qlen < young)
    break;
   thresh--;
   young <<= 1;
  }
 }
 defer_accept = READ_ONCE(queue->rskq_defer_accept);
 if (defer_accept)
  max_retries = defer_accept;
 syn_ack_recalc(req, thresh, max_retries, defer_accept,
         &expire, &resend);
 req->rsk_ops->syn_ack_timeout(req);
 if (!expire &&
     (!resend ||
      !inet_rtx_syn_ack(sk_listener, req) ||
      inet_rsk(req)->acked)) {
  unsigned long timeo;

  if (req->num_timeout++ == 0)
   atomic_dec(&queue->young);
  timeo = min(TCP_TIMEOUT_INIT << req->num_timeout, TCP_RTO_MAX);
  mod_timer(&req->rsk_timer, jiffies + timeo);
  return;
 }
drop:
 inet_csk_reqsk_queue_drop_and_put(sk_listener, req);
}
