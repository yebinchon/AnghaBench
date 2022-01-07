
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




 int xfrm4_transport_input (struct xfrm_state*,struct sk_buff*) ;
 int xfrm6_transport_input (struct xfrm_state*,struct sk_buff*) ;
 int xfrm_prepare_input (struct xfrm_state*,struct sk_buff*) ;

__attribute__((used)) static int xfrm_inner_mode_input(struct xfrm_state *x,
     const struct xfrm_mode *inner_mode,
     struct sk_buff *skb)
{
 switch (inner_mode->encap) {
 case 131:
 case 128:
  return xfrm_prepare_input(x, skb);
 case 129:
  if (inner_mode->family == AF_INET)
   return xfrm4_transport_input(x, skb);
  if (inner_mode->family == AF_INET6)
   return xfrm6_transport_input(x, skb);
  break;
 case 130:
  WARN_ON_ONCE(1);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }

 return -EOPNOTSUPP;
}
