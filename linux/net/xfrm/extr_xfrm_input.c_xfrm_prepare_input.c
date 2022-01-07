
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_state_afinfo {int (* extract_input ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_5__ {scalar_t__ family; } ;
struct TYPE_4__ {int family; } ;
struct xfrm_mode {int family; } ;
struct xfrm_state {TYPE_2__ sel; TYPE_1__ outer_mode; struct xfrm_mode inner_mode; } ;
struct sk_buff {void* protocol; } ;
struct TYPE_6__ {int protocol; } ;




 scalar_t__ AF_UNSPEC ;
 int EAFNOSUPPORT ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int WARN_ON_ONCE (int) ;
 TYPE_3__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 void* htons (int ) ;
 scalar_t__ likely (struct xfrm_state_afinfo const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct xfrm_state*,struct sk_buff*) ;
 int xfrm_inner_mode_encap_remove (struct xfrm_state*,struct xfrm_mode const*,struct sk_buff*) ;
 struct xfrm_mode* xfrm_ip2inner_mode (struct xfrm_state*,int ) ;
 struct xfrm_state_afinfo* xfrm_state_afinfo_get_rcu (int ) ;

__attribute__((used)) static int xfrm_prepare_input(struct xfrm_state *x, struct sk_buff *skb)
{
 const struct xfrm_mode *inner_mode = &x->inner_mode;
 const struct xfrm_state_afinfo *afinfo;
 int err = -EAFNOSUPPORT;

 rcu_read_lock();
 afinfo = xfrm_state_afinfo_get_rcu(x->outer_mode.family);
 if (likely(afinfo))
  err = afinfo->extract_input(x, skb);
 rcu_read_unlock();

 if (err)
  return err;

 if (x->sel.family == AF_UNSPEC) {
  inner_mode = xfrm_ip2inner_mode(x, XFRM_MODE_SKB_CB(skb)->protocol);
  if (!inner_mode)
   return -EAFNOSUPPORT;
 }

 switch (inner_mode->family) {
 case 129:
  skb->protocol = htons(ETH_P_IP);
  break;
 case 128:
  skb->protocol = htons(ETH_P_IPV6);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }

 return xfrm_inner_mode_encap_remove(x, inner_mode, skb);
}
