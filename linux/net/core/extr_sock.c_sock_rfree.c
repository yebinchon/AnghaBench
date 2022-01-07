
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rmem_alloc; } ;
struct sk_buff {unsigned int truesize; struct sock* sk; } ;


 int atomic_sub (unsigned int,int *) ;
 int sk_mem_uncharge (struct sock*,unsigned int) ;

void sock_rfree(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 unsigned int len = skb->truesize;

 atomic_sub(len, &sk->sk_rmem_alloc);
 sk_mem_uncharge(sk, len);
}
