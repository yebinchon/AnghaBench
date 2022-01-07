
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int dst_port; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct vport {int dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __be16 ;


 int EMSGSIZE ;
 int OVS_TUNNEL_ATTR_DST_PORT ;
 int OVS_TUNNEL_ATTR_EXTENSION ;
 int OVS_VXLAN_EXT_GBP ;
 int VXLAN_F_GBP ;
 struct vxlan_dev* netdev_priv (int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int vxlan_get_options(const struct vport *vport, struct sk_buff *skb)
{
 struct vxlan_dev *vxlan = netdev_priv(vport->dev);
 __be16 dst_port = vxlan->cfg.dst_port;

 if (nla_put_u16(skb, OVS_TUNNEL_ATTR_DST_PORT, ntohs(dst_port)))
  return -EMSGSIZE;

 if (vxlan->cfg.flags & VXLAN_F_GBP) {
  struct nlattr *exts;

  exts = nla_nest_start_noflag(skb, OVS_TUNNEL_ATTR_EXTENSION);
  if (!exts)
   return -EMSGSIZE;

  if (vxlan->cfg.flags & VXLAN_F_GBP &&
      nla_put_flag(skb, OVS_VXLAN_EXT_GBP))
   return -EMSGSIZE;

  nla_nest_end(skb, exts);
 }

 return 0;
}
