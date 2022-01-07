
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int dev; TYPE_1__* ops; int xfrm; } ;
struct TYPE_3__ {int (* local_out ) (struct net*,int ,struct sk_buff*) ;int family; } ;


 int EINPROGRESS ;
 int NF_INET_POST_ROUTING ;
 int dst_output (struct net*,int ,struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int nf_hook (int ,int ,struct net*,int ,struct sk_buff*,int *,int ,int ) ;
 int nf_reset_ct (struct sk_buff*) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int stub1 (struct net*,int ,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int xfrm_output2 ;
 int xfrm_output_one (struct sk_buff*,int) ;
 struct net* xs_net (int ) ;

int xfrm_output_resume(struct sk_buff *skb, int err)
{
 struct net *net = xs_net(skb_dst(skb)->xfrm);

 while (likely((err = xfrm_output_one(skb, err)) == 0)) {
  nf_reset_ct(skb);

  err = skb_dst(skb)->ops->local_out(net, skb->sk, skb);
  if (unlikely(err != 1))
   goto out;

  if (!skb_dst(skb)->xfrm)
   return dst_output(net, skb->sk, skb);

  err = nf_hook(skb_dst(skb)->ops->family,
         NF_INET_POST_ROUTING, net, skb->sk, skb,
         ((void*)0), skb_dst(skb)->dev, xfrm_output2);
  if (unlikely(err != 1))
   goto out;
 }

 if (err == -EINPROGRESS)
  err = 0;

out:
 return err;
}
