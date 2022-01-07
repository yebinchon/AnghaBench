
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encap; int family; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sk_buff {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EOPNOTSUPP ;
 int WARN_ON_ONCE (int) ;




 int xfrm4_prepare_output (struct xfrm_state*,struct sk_buff*) ;
 int xfrm4_transport_output (struct xfrm_state*,struct sk_buff*) ;
 int xfrm6_prepare_output (struct xfrm_state*,struct sk_buff*) ;
 int xfrm6_ro_output (struct xfrm_state*,struct sk_buff*) ;
 int xfrm6_transport_output (struct xfrm_state*,struct sk_buff*) ;

__attribute__((used)) static int xfrm_outer_mode_output(struct xfrm_state *x, struct sk_buff *skb)
{
 switch (x->outer_mode.encap) {
 case 131:
 case 128:
  if (x->outer_mode.family == AF_INET)
   return xfrm4_prepare_output(x, skb);
  if (x->outer_mode.family == AF_INET6)
   return xfrm6_prepare_output(x, skb);
  break;
 case 129:
  if (x->outer_mode.family == AF_INET)
   return xfrm4_transport_output(x, skb);
  if (x->outer_mode.family == AF_INET6)
   return xfrm6_transport_output(x, skb);
  break;
 case 130:
  if (x->outer_mode.family == AF_INET6)
   return xfrm6_ro_output(x, skb);
  WARN_ON_ONCE(1);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }

 return -EOPNOTSUPP;
}
