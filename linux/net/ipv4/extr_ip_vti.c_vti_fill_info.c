
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int daddr; int saddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; int o_key; int i_key; int link; } ;
struct ip_tunnel {int fwmark; struct ip_tunnel_parm parms; } ;


 int EMSGSIZE ;
 int IFLA_VTI_FWMARK ;
 int IFLA_VTI_IKEY ;
 int IFLA_VTI_LINK ;
 int IFLA_VTI_LOCAL ;
 int IFLA_VTI_OKEY ;
 int IFLA_VTI_REMOTE ;
 struct ip_tunnel* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int vti_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct ip_tunnel *t = netdev_priv(dev);
 struct ip_tunnel_parm *p = &t->parms;

 if (nla_put_u32(skb, IFLA_VTI_LINK, p->link) ||
     nla_put_be32(skb, IFLA_VTI_IKEY, p->i_key) ||
     nla_put_be32(skb, IFLA_VTI_OKEY, p->o_key) ||
     nla_put_in_addr(skb, IFLA_VTI_LOCAL, p->iph.saddr) ||
     nla_put_in_addr(skb, IFLA_VTI_REMOTE, p->iph.daddr) ||
     nla_put_u32(skb, IFLA_VTI_FWMARK, t->fwmark))
  return -EMSGSIZE;

 return 0;
}
