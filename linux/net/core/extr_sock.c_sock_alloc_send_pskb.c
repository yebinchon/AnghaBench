
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_shutdown; int sk_allocation; TYPE_1__* sk_socket; int sk_sndbuf; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int EAGAIN ;
 int EPIPE ;
 scalar_t__ READ_ONCE (int ) ;
 int SEND_SHUTDOWN ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 struct sk_buff* alloc_skb_with_frags (unsigned long,unsigned long,int,int*,int ) ;
 int current ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_set_bit (int ,struct sock*) ;
 scalar_t__ sk_wmem_alloc_get (struct sock*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;
 long sock_sndtimeo (struct sock*,int) ;
 long sock_wait_for_wmem (struct sock*,long) ;

struct sk_buff *sock_alloc_send_pskb(struct sock *sk, unsigned long header_len,
         unsigned long data_len, int noblock,
         int *errcode, int max_page_order)
{
 struct sk_buff *skb;
 long timeo;
 int err;

 timeo = sock_sndtimeo(sk, noblock);
 for (;;) {
  err = sock_error(sk);
  if (err != 0)
   goto failure;

  err = -EPIPE;
  if (sk->sk_shutdown & SEND_SHUTDOWN)
   goto failure;

  if (sk_wmem_alloc_get(sk) < READ_ONCE(sk->sk_sndbuf))
   break;

  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);
  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  err = -EAGAIN;
  if (!timeo)
   goto failure;
  if (signal_pending(current))
   goto interrupted;
  timeo = sock_wait_for_wmem(sk, timeo);
 }
 skb = alloc_skb_with_frags(header_len, data_len, max_page_order,
       errcode, sk->sk_allocation);
 if (skb)
  skb_set_owner_w(skb, sk);
 return skb;

interrupted:
 err = sock_intr_errno(timeo);
failure:
 *errcode = err;
 return ((void*)0);
}
