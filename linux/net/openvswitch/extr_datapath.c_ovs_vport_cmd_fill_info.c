
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vport {TYPE_2__* dev; TYPE_1__* ops; int port_no; int dp; } ;
struct sk_buff {int dummy; } ;
struct ovs_vport_stats {int dummy; } ;
struct ovs_header {int dp_ifindex; } ;
struct net {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int type; } ;


 int EMSGSIZE ;
 int OVS_VPORT_ATTR_IFINDEX ;
 int OVS_VPORT_ATTR_NAME ;
 int OVS_VPORT_ATTR_NETNSID ;
 int OVS_VPORT_ATTR_PAD ;
 int OVS_VPORT_ATTR_PORT_NO ;
 int OVS_VPORT_ATTR_STATS ;
 int OVS_VPORT_ATTR_TYPE ;
 int dev_net (TYPE_2__*) ;
 int dp_vport_genl_family ;
 int genlmsg_cancel (struct sk_buff*,struct ovs_header*) ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 struct ovs_header* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int get_dpifindex (int ) ;
 int net_eq (struct net*,int ) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct ovs_vport_stats*,int ) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int ovs_vport_get_options (struct vport*,struct sk_buff*) ;
 int ovs_vport_get_stats (struct vport*,struct ovs_vport_stats*) ;
 scalar_t__ ovs_vport_get_upcall_portids (struct vport*,struct sk_buff*) ;
 int ovs_vport_name (struct vport*) ;
 int peernet2id_alloc (struct net*,int ,int ) ;

__attribute__((used)) static int ovs_vport_cmd_fill_info(struct vport *vport, struct sk_buff *skb,
       struct net *net, u32 portid, u32 seq,
       u32 flags, u8 cmd, gfp_t gfp)
{
 struct ovs_header *ovs_header;
 struct ovs_vport_stats vport_stats;
 int err;

 ovs_header = genlmsg_put(skb, portid, seq, &dp_vport_genl_family,
     flags, cmd);
 if (!ovs_header)
  return -EMSGSIZE;

 ovs_header->dp_ifindex = get_dpifindex(vport->dp);

 if (nla_put_u32(skb, OVS_VPORT_ATTR_PORT_NO, vport->port_no) ||
     nla_put_u32(skb, OVS_VPORT_ATTR_TYPE, vport->ops->type) ||
     nla_put_string(skb, OVS_VPORT_ATTR_NAME,
      ovs_vport_name(vport)) ||
     nla_put_u32(skb, OVS_VPORT_ATTR_IFINDEX, vport->dev->ifindex))
  goto nla_put_failure;

 if (!net_eq(net, dev_net(vport->dev))) {
  int id = peernet2id_alloc(net, dev_net(vport->dev), gfp);

  if (nla_put_s32(skb, OVS_VPORT_ATTR_NETNSID, id))
   goto nla_put_failure;
 }

 ovs_vport_get_stats(vport, &vport_stats);
 if (nla_put_64bit(skb, OVS_VPORT_ATTR_STATS,
     sizeof(struct ovs_vport_stats), &vport_stats,
     OVS_VPORT_ATTR_PAD))
  goto nla_put_failure;

 if (ovs_vport_get_upcall_portids(vport, skb))
  goto nla_put_failure;

 err = ovs_vport_get_options(vport, skb);
 if (err == -EMSGSIZE)
  goto error;

 genlmsg_end(skb, ovs_header);
 return 0;

nla_put_failure:
 err = -EMSGSIZE;
error:
 genlmsg_cancel(skb, ovs_header);
 return err;
}
