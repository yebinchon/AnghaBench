
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_refcnt; } ;
struct sk_buff {int destructor; struct sock* sk; } ;


 int GFP_ATOMIC ;
 int refcount_inc_not_zero (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int sock_efree ;
 int sock_put (struct sock*) ;

struct sk_buff *skb_clone_sk(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 struct sk_buff *clone;

 if (!sk || !refcount_inc_not_zero(&sk->sk_refcnt))
  return ((void*)0);

 clone = skb_clone(skb, GFP_ATOMIC);
 if (!clone) {
  sock_put(sk);
  return ((void*)0);
 }

 clone->sk = sk;
 clone->destructor = sock_efree;

 return clone;
}
