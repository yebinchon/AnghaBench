
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_error_report ) (struct sock*) ;int sk_error_queue; int sk_rmem_alloc; int sk_rcvbuf; } ;
struct sk_buff {unsigned int truesize; int destructor; struct sock* sk; } ;


 int ENOMEM ;
 scalar_t__ READ_ONCE (int ) ;
 int SOCK_DEAD ;
 int atomic_add (unsigned int,int *) ;
 unsigned int atomic_read (int *) ;
 int skb_dst_force (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_err_queue (struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_rmem_free ;
 int stub1 (struct sock*) ;

int sock_queue_err_skb(struct sock *sk, struct sk_buff *skb)
{
 if (atomic_read(&sk->sk_rmem_alloc) + skb->truesize >=
     (unsigned int)READ_ONCE(sk->sk_rcvbuf))
  return -ENOMEM;

 skb_orphan(skb);
 skb->sk = sk;
 skb->destructor = sock_rmem_free;
 atomic_add(skb->truesize, &sk->sk_rmem_alloc);
 skb_set_err_queue(skb);


 skb_dst_force(skb);

 skb_queue_tail(&sk->sk_error_queue, skb);
 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_error_report(sk);
 return 0;
}
