
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct sock {int sk_receive_queue; int sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* release ) (struct vsock_sock*) ;} ;


 int SHUTDOWN_MASK ;
 int SINGLE_DEPTH_NESTING ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock_nested (struct sock*,int) ;
 int release_sock (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct vsock_sock*) ;
 TYPE_1__* transport ;
 struct sock* vsock_dequeue_accept (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static void __vsock_release(struct sock *sk, int level)
{
 if (sk) {
  struct sk_buff *skb;
  struct sock *pending;
  struct vsock_sock *vsk;

  vsk = vsock_sk(sk);
  pending = ((void*)0);




  transport->release(vsk);






  lock_sock_nested(sk, level);
  sock_orphan(sk);
  sk->sk_shutdown = SHUTDOWN_MASK;

  while ((skb = skb_dequeue(&sk->sk_receive_queue)))
   kfree_skb(skb);


  while ((pending = vsock_dequeue_accept(sk)) != ((void*)0)) {
   __vsock_release(pending, SINGLE_DEPTH_NESTING);
   sock_put(pending);
  }

  release_sock(sk);
  sock_put(sk);
 }
}
