
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {int (* local_error ) (struct sk_buff*,int) ;} ;
struct sk_buff {scalar_t__ protocol; } ;


 unsigned int AF_INET ;
 unsigned int AF_INET6 ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 int rcu_read_unlock () ;
 int stub1 (struct sk_buff*,int) ;
 struct xfrm_state_afinfo* xfrm_state_get_afinfo (unsigned int) ;

void xfrm_local_error(struct sk_buff *skb, int mtu)
{
 unsigned int proto;
 struct xfrm_state_afinfo *afinfo;

 if (skb->protocol == htons(ETH_P_IP))
  proto = AF_INET;
 else if (skb->protocol == htons(ETH_P_IPV6))
  proto = AF_INET6;
 else
  return;

 afinfo = xfrm_state_get_afinfo(proto);
 if (afinfo) {
  afinfo->local_error(skb, mtu);
  rcu_read_unlock();
 }
}
