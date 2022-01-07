
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rmem_alloc; } ;
struct sk_buff {int truesize; int destructor; struct sock* sk; } ;


 int WARN_ON (int ) ;
 int atomic_add (int ,int *) ;
 int netlink_skb_destructor ;
 int sk_mem_charge (struct sock*,int ) ;

__attribute__((used)) static void netlink_skb_set_owner_r(struct sk_buff *skb, struct sock *sk)
{
 WARN_ON(skb->sk != ((void*)0));
 skb->sk = sk;
 skb->destructor = netlink_skb_destructor;
 atomic_add(skb->truesize, &sk->sk_rmem_alloc);
 sk_mem_charge(sk, skb->truesize);
}
