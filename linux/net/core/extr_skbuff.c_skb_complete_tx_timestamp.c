
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_refcnt; } ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {struct sock* sk; } ;


 int SCM_TSTAMP_SND ;
 int __skb_complete_tx_timestamp (struct sk_buff*,struct sock*,int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int refcount_inc_not_zero (int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_may_tx_timestamp (struct sock*,int) ;
 int sock_put (struct sock*) ;

void skb_complete_tx_timestamp(struct sk_buff *skb,
          struct skb_shared_hwtstamps *hwtstamps)
{
 struct sock *sk = skb->sk;

 if (!skb_may_tx_timestamp(sk, 0))
  goto err;




 if (likely(refcount_inc_not_zero(&sk->sk_refcnt))) {
  *skb_hwtstamps(skb) = *hwtstamps;
  __skb_complete_tx_timestamp(skb, sk, SCM_TSTAMP_SND, 0);
  sock_put(sk);
  return;
 }

err:
 kfree_skb(skb);
}
