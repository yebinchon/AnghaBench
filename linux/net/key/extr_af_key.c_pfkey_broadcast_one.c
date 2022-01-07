
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvbuf; int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; int sk_rmem_alloc; } ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int ENOBUFS ;
 scalar_t__ atomic_read (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int pfkey_broadcast_one(struct sk_buff *skb, gfp_t allocation,
          struct sock *sk)
{
 int err = -ENOBUFS;

 if (atomic_read(&sk->sk_rmem_alloc) > sk->sk_rcvbuf)
  return err;

 skb = skb_clone(skb, allocation);

 if (skb) {
  skb_set_owner_r(skb, sk);
  skb_queue_tail(&sk->sk_receive_queue, skb);
  sk->sk_data_ready(sk);
  err = 0;
 }
 return err;
}
