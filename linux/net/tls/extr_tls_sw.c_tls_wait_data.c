
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_rx {struct sk_buff* recv_pkt; } ;
struct tls_context {int dummy; } ;
struct sock {int sk_shutdown; scalar_t__ sk_err; } ;
struct sk_psock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int MSG_DONTWAIT ;
 int RCV_SHUTDOWN ;
 int SOCKWQ_ASYNC_WAITDATA ;
 int SOCK_DONE ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 scalar_t__ sk_psock_queue_empty (struct sk_psock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int,int *) ;
 int sock_error (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_intr_errno (long) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static struct sk_buff *tls_wait_data(struct sock *sk, struct sk_psock *psock,
         int flags, long timeo, int *err)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);
 struct sk_buff *skb;
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 while (!(skb = ctx->recv_pkt) && sk_psock_queue_empty(psock)) {
  if (sk->sk_err) {
   *err = sock_error(sk);
   return ((void*)0);
  }

  if (sk->sk_shutdown & RCV_SHUTDOWN)
   return ((void*)0);

  if (sock_flag(sk, SOCK_DONE))
   return ((void*)0);

  if ((flags & MSG_DONTWAIT) || !timeo) {
   *err = -EAGAIN;
   return ((void*)0);
  }

  add_wait_queue(sk_sleep(sk), &wait);
  sk_set_bit(SOCKWQ_ASYNC_WAITDATA, sk);
  sk_wait_event(sk, &timeo,
         ctx->recv_pkt != skb ||
         !sk_psock_queue_empty(psock),
         &wait);
  sk_clear_bit(SOCKWQ_ASYNC_WAITDATA, sk);
  remove_wait_queue(sk_sleep(sk), &wait);


  if (signal_pending(current)) {
   *err = sock_intr_errno(timeo);
   return ((void*)0);
  }
 }

 return skb;
}
