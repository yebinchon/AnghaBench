
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_if_parms {int if_id; int link; } ;
struct xfrm_if {struct xfrm_if_parms p; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int EMSGSIZE ;
 int IFLA_XFRM_IF_ID ;
 int IFLA_XFRM_LINK ;
 struct xfrm_if* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int xfrmi_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct xfrm_if *xi = netdev_priv(dev);
 struct xfrm_if_parms *parm = &xi->p;

 if (nla_put_u32(skb, IFLA_XFRM_LINK, parm->link) ||
     nla_put_u32(skb, IFLA_XFRM_IF_ID, parm->if_id))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
