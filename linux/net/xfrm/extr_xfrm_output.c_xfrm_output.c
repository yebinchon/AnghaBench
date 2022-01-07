
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dev; } ;
struct xfrm_state {TYPE_2__ xso; } ;
struct sock {int dummy; } ;
struct sk_buff {int encapsulation; scalar_t__ ip_summed; } ;
struct sec_path {int len; struct xfrm_state** xvec; int olen; } ;
struct net {int dummy; } ;
struct TYPE_8__ {struct xfrm_state* xfrm; int dev; } ;
struct TYPE_7__ {int gso_type; } ;
struct TYPE_5__ {int features; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ENOMEM ;
 int LINUX_MIB_XFRMOUTERROR ;
 int NETIF_F_HW_ESP_TX_CSUM ;
 int SKB_GSO_ESP ;
 int XFRM_INC_STATS (struct net*,int ) ;
 struct net* dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int secpath_reset (struct sk_buff*) ;
 struct sec_path* secpath_set (struct sk_buff*) ;
 int skb_checksum_help (struct sk_buff*) ;
 TYPE_4__* skb_dst (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ xfrm_dev_offload_ok (struct sk_buff*,struct xfrm_state*) ;
 int xfrm_output2 (struct net*,struct sock*,struct sk_buff*) ;
 int xfrm_output_gso (struct net*,struct sock*,struct sk_buff*) ;
 int xfrm_state_hold (struct xfrm_state*) ;

int xfrm_output(struct sock *sk, struct sk_buff *skb)
{
 struct net *net = dev_net(skb_dst(skb)->dev);
 struct xfrm_state *x = skb_dst(skb)->xfrm;
 int err;

 secpath_reset(skb);

 if (xfrm_dev_offload_ok(skb, x)) {
  struct sec_path *sp;

  sp = secpath_set(skb);
  if (!sp) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTERROR);
   kfree_skb(skb);
   return -ENOMEM;
  }
  skb->encapsulation = 1;

  sp->olen++;
  sp->xvec[sp->len++] = x;
  xfrm_state_hold(x);

  if (skb_is_gso(skb)) {
   skb_shinfo(skb)->gso_type |= SKB_GSO_ESP;

   return xfrm_output2(net, sk, skb);
  }

  if (x->xso.dev && x->xso.dev->features & NETIF_F_HW_ESP_TX_CSUM)
   goto out;
 }

 if (skb_is_gso(skb))
  return xfrm_output_gso(net, sk, skb);

 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  err = skb_checksum_help(skb);
  if (err) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTERROR);
   kfree_skb(skb);
   return err;
  }
 }

out:
 return xfrm_output2(net, sk, skb);
}
