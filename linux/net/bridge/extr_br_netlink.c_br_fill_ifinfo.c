
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; int dev_addr; scalar_t__ addr_len; int name; int type; int operstate; } ;
struct net_bridge_vlan_group {int num_vlans; } ;
struct net_bridge_port {int flags; struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int ifi_flags; int ifi_type; scalar_t__ __ifi_pad; int ifi_family; } ;
struct TYPE_2__ {scalar_t__ ifindex; int name; } ;


 int AF_BRIDGE ;
 int BR_VLAN_TUNNEL ;
 int EMSGSIZE ;
 int IFLA_ADDRESS ;
 int IFLA_AF_SPEC ;
 int IFLA_IFNAME ;
 int IFLA_LINK ;
 int IFLA_MASTER ;
 int IFLA_MTU ;
 int IFLA_OPERSTATE ;
 int IFLA_PROTINFO ;
 int IF_OPER_DOWN ;
 int RTEXT_FILTER_BRVLAN ;
 int RTEXT_FILTER_BRVLAN_COMPRESSED ;
 int RTM_NEWLINK ;
 int br_debug (struct net_bridge*,char*,int,int ,int ) ;
 int br_fill_ifvlaninfo (struct sk_buff*,struct net_bridge_vlan_group*) ;
 int br_fill_ifvlaninfo_compressed (struct sk_buff*,struct net_bridge_vlan_group*) ;
 int br_fill_vlan_tunnel_info (struct sk_buff*,struct net_bridge_vlan_group*) ;
 scalar_t__ br_port_fill_attrs (struct sk_buff*,struct net_bridge_port const*) ;
 struct net_bridge_vlan_group* br_vlan_group_rcu (struct net_bridge*) ;
 int dev_get_flags (struct net_device const*) ;
 scalar_t__ dev_get_iflink (struct net_device const*) ;
 struct net_bridge_vlan_group* nbp_vlan_group_rcu (struct net_bridge_port const*) ;
 struct net_bridge* netdev_priv (struct net_device const*) ;
 scalar_t__ netif_running (struct net_device const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int,int,int,int,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int br_fill_ifinfo(struct sk_buff *skb,
     const struct net_bridge_port *port,
     u32 pid, u32 seq, int event, unsigned int flags,
     u32 filter_mask, const struct net_device *dev)
{
 u8 operstate = netif_running(dev) ? dev->operstate : IF_OPER_DOWN;
 struct net_bridge *br;
 struct ifinfomsg *hdr;
 struct nlmsghdr *nlh;

 if (port)
  br = port->br;
 else
  br = netdev_priv(dev);

 br_debug(br, "br_fill_info event %d port %s master %s\n",
       event, dev->name, br->dev->name);

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*hdr), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 hdr = nlmsg_data(nlh);
 hdr->ifi_family = AF_BRIDGE;
 hdr->__ifi_pad = 0;
 hdr->ifi_type = dev->type;
 hdr->ifi_index = dev->ifindex;
 hdr->ifi_flags = dev_get_flags(dev);
 hdr->ifi_change = 0;

 if (nla_put_string(skb, IFLA_IFNAME, dev->name) ||
     nla_put_u32(skb, IFLA_MASTER, br->dev->ifindex) ||
     nla_put_u32(skb, IFLA_MTU, dev->mtu) ||
     nla_put_u8(skb, IFLA_OPERSTATE, operstate) ||
     (dev->addr_len &&
      nla_put(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr)) ||
     (dev->ifindex != dev_get_iflink(dev) &&
      nla_put_u32(skb, IFLA_LINK, dev_get_iflink(dev))))
  goto nla_put_failure;

 if (event == RTM_NEWLINK && port) {
  struct nlattr *nest;

  nest = nla_nest_start(skb, IFLA_PROTINFO);
  if (nest == ((void*)0) || br_port_fill_attrs(skb, port) < 0)
   goto nla_put_failure;
  nla_nest_end(skb, nest);
 }


 if ((filter_mask & RTEXT_FILTER_BRVLAN) ||
     (filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED)) {
  struct net_bridge_vlan_group *vg;
  struct nlattr *af;
  int err;


  rcu_read_lock();
  if (port)
   vg = nbp_vlan_group_rcu(port);
  else
   vg = br_vlan_group_rcu(br);

  if (!vg || !vg->num_vlans) {
   rcu_read_unlock();
   goto done;
  }
  af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
  if (!af) {
   rcu_read_unlock();
   goto nla_put_failure;
  }
  if (filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED)
   err = br_fill_ifvlaninfo_compressed(skb, vg);
  else
   err = br_fill_ifvlaninfo(skb, vg);

  if (port && (port->flags & BR_VLAN_TUNNEL))
   err = br_fill_vlan_tunnel_info(skb, vg);
  rcu_read_unlock();
  if (err)
   goto nla_put_failure;
  nla_nest_end(skb, af);
 }

done:
 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
