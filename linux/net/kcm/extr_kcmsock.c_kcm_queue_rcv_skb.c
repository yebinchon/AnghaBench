
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sock {scalar_t__ sk_rcvbuf; int (* sk_data_ready ) (struct sock*) ;int sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int truesize; int destructor; struct sock* sk; int * dev; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int SOCK_DEAD ;
 int atomic_add (int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int kcm_rfree ;
 int sk_mem_charge (struct sock*,int ) ;
 int sk_rmem_schedule (struct sock*,struct sk_buff*,int ) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int kcm_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 struct sk_buff_head *list = &sk->sk_receive_queue;

 if (atomic_read(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
  return -ENOMEM;

 if (!sk_rmem_schedule(sk, skb, skb->truesize))
  return -ENOBUFS;

 skb->dev = ((void*)0);

 skb_orphan(skb);
 skb->sk = sk;
 skb->destructor = kcm_rfree;
 atomic_add(skb->truesize, &sk->sk_rmem_alloc);
 sk_mem_charge(sk, skb->truesize);

 skb_queue_tail(list, skb);

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk);

 return 0;
}
