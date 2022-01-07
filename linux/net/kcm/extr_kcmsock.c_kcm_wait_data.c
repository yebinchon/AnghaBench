
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_err; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int EAGAIN ;
 int MSG_DONTWAIT ;
 int SOCK_DONE ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int sk_wait_data (struct sock*,long*,int *) ;
 struct sk_buff* skb_peek (int *) ;
 int sock_error (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_intr_errno (long) ;

__attribute__((used)) static struct sk_buff *kcm_wait_data(struct sock *sk, int flags,
         long timeo, int *err)
{
 struct sk_buff *skb;

 while (!(skb = skb_peek(&sk->sk_receive_queue))) {
  if (sk->sk_err) {
   *err = sock_error(sk);
   return ((void*)0);
  }

  if (sock_flag(sk, SOCK_DONE))
   return ((void*)0);

  if ((flags & MSG_DONTWAIT) || !timeo) {
   *err = -EAGAIN;
   return ((void*)0);
  }

  sk_wait_data(sk, &timeo, ((void*)0));


  if (signal_pending(current)) {
   *err = sock_intr_errno(timeo);
   return ((void*)0);
  }
 }

 return skb;
}
