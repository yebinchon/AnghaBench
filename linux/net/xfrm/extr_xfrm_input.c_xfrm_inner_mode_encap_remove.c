
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct xfrm_mode {int encap; int family; } ;
struct sk_buff {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EOPNOTSUPP ;
 int WARN_ON_ONCE (int) ;


 int xfrm4_remove_beet_encap (struct xfrm_state*,struct sk_buff*) ;
 int xfrm4_remove_tunnel_encap (struct xfrm_state*,struct sk_buff*) ;
 int xfrm6_remove_beet_encap (struct xfrm_state*,struct sk_buff*) ;
 int xfrm6_remove_tunnel_encap (struct xfrm_state*,struct sk_buff*) ;

__attribute__((used)) static int
xfrm_inner_mode_encap_remove(struct xfrm_state *x,
        const struct xfrm_mode *inner_mode,
        struct sk_buff *skb)
{
 switch (inner_mode->encap) {
 case 129:
  if (inner_mode->family == AF_INET)
   return xfrm4_remove_beet_encap(x, skb);
  if (inner_mode->family == AF_INET6)
   return xfrm6_remove_beet_encap(x, skb);
  break;
 case 128:
  if (inner_mode->family == AF_INET)
   return xfrm4_remove_tunnel_encap(x, skb);
  if (inner_mode->family == AF_INET6)
   return xfrm6_remove_tunnel_encap(x, skb);
  break;
 }

 WARN_ON_ONCE(1);
 return -EOPNOTSUPP;
}
