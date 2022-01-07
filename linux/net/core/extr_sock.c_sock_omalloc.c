
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; } ;
struct sk_buff {int destructor; struct sock* sk; int truesize; } ;
typedef int gfp_t ;


 scalar_t__ SKB_TRUESIZE (unsigned long) ;
 struct sk_buff* alloc_skb (unsigned long,int ) ;
 int atomic_add (int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int sock_ofree ;
 scalar_t__ sysctl_optmem_max ;

struct sk_buff *sock_omalloc(struct sock *sk, unsigned long size,
        gfp_t priority)
{
 struct sk_buff *skb;


 if (atomic_read(&sk->sk_omem_alloc) + SKB_TRUESIZE(size) >
     sysctl_optmem_max)
  return ((void*)0);

 skb = alloc_skb(size, priority);
 if (!skb)
  return ((void*)0);

 atomic_add(skb->truesize, &sk->sk_omem_alloc);
 skb->sk = sk;
 skb->destructor = sock_ofree;
 return skb;
}
