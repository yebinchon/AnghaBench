
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dev; struct sock* sk; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct rtable {TYPE_2__ dst; } ;
struct TYPE_3__ {int (* update_pmtu ) (TYPE_2__*,struct sock*,int *,int) ;} ;


 scalar_t__ sk_fullsock (struct sock*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 int stub1 (TYPE_2__*,struct sock*,int *,int) ;

__attribute__((used)) static inline void maybe_update_pmtu(int skb_af, struct sk_buff *skb, int mtu)
{
 struct sock *sk = skb->sk;
 struct rtable *ort = skb_rtable(skb);

 if (!skb->dev && sk && sk_fullsock(sk))
  ort->dst.ops->update_pmtu(&ort->dst, sk, ((void*)0), mtu);
}
