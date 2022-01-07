
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_rx {int rx_list; scalar_t__ recv_pkt; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct sk_psock {int ingress_msg; } ;


 int list_empty (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_psock* sk_psock (struct sock const*) ;
 int skb_queue_empty (int *) ;
 struct tls_context* tls_get_ctx (struct sock const*) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;

bool tls_sw_stream_read(const struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);
 bool ingress_empty = 1;
 struct sk_psock *psock;

 rcu_read_lock();
 psock = sk_psock(sk);
 if (psock)
  ingress_empty = list_empty(&psock->ingress_msg);
 rcu_read_unlock();

 return !ingress_empty || ctx->recv_pkt ||
  !skb_queue_empty(&ctx->rx_list);
}
