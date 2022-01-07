
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {int len; } ;
struct rfcomm_dlc {struct sock* owner; } ;


 int atomic_add (int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int rfcomm_dlc_throttle (struct rfcomm_dlc*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void rfcomm_sk_data_ready(struct rfcomm_dlc *d, struct sk_buff *skb)
{
 struct sock *sk = d->owner;
 if (!sk)
  return;

 atomic_add(skb->len, &sk->sk_rmem_alloc);
 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_data_ready(sk);

 if (atomic_read(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
  rfcomm_dlc_throttle(d);
}
