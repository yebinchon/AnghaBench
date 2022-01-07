
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encap; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sk_buff {int protocol; } ;
struct TYPE_4__ {int flags; } ;


 int EOPNOTSUPP ;
 int ETH_P_IP ;
 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_XFRM_TUNNEL_SIZE ;
 int WARN_ON_ONCE (int) ;


 int htons (int ) ;
 int xfrm4_beet_encap_add (struct xfrm_state*,struct sk_buff*) ;
 int xfrm4_tunnel_encap_add (struct xfrm_state*,struct sk_buff*) ;
 int xfrm_inner_extract_output (struct xfrm_state*,struct sk_buff*) ;

__attribute__((used)) static int xfrm4_prepare_output(struct xfrm_state *x, struct sk_buff *skb)
{
 int err;

 err = xfrm_inner_extract_output(x, skb);
 if (err)
  return err;

 IPCB(skb)->flags |= IPSKB_XFRM_TUNNEL_SIZE;
 skb->protocol = htons(ETH_P_IP);

 switch (x->outer_mode.encap) {
 case 129:
  return xfrm4_beet_encap_add(x, skb);
 case 128:
  return xfrm4_tunnel_encap_add(x, skb);
 }

 WARN_ON_ONCE(1);
 return -EOPNOTSUPP;
}
