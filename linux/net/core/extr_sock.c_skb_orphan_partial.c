
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; int sk_refcnt; } ;
struct sk_buff {int destructor; int truesize; struct sock* sk; } ;


 int WARN_ON (int ) ;
 scalar_t__ can_skb_orphan_partial (struct sk_buff*) ;
 scalar_t__ refcount_inc_not_zero (int *) ;
 int refcount_sub_and_test (int ,int *) ;
 scalar_t__ skb_is_tcp_pure_ack (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int sock_efree ;

void skb_orphan_partial(struct sk_buff *skb)
{
 if (skb_is_tcp_pure_ack(skb))
  return;

 if (can_skb_orphan_partial(skb)) {
  struct sock *sk = skb->sk;

  if (refcount_inc_not_zero(&sk->sk_refcnt)) {
   WARN_ON(refcount_sub_and_test(skb->truesize, &sk->sk_wmem_alloc));
   skb->destructor = sock_efree;
  }
 } else {
  skb_orphan(skb);
 }
}
