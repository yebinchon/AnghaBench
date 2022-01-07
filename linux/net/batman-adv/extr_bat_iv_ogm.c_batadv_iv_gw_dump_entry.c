
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; } ;
struct batadv_priv {int dummy; } ;
struct batadv_neigh_node {TYPE_4__* if_incoming; int addr; } ;
struct TYPE_7__ {int tq_avg; } ;
struct batadv_neigh_ifinfo {TYPE_2__ bat_iv; } ;
struct batadv_gw_node {int bandwidth_up; int bandwidth_down; TYPE_5__* orig_node; } ;
struct TYPE_10__ {int orig; } ;
struct TYPE_9__ {TYPE_3__* net_dev; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_6__ {int nlmsg_seq; } ;


 int BATADV_ATTR_BANDWIDTH_DOWN ;
 int BATADV_ATTR_BANDWIDTH_UP ;
 int BATADV_ATTR_FLAG_BEST ;
 int BATADV_ATTR_HARD_IFNAME ;
 int BATADV_ATTR_ORIG_ADDRESS ;
 int BATADV_ATTR_ROUTER ;
 int BATADV_ATTR_TQ ;
 int BATADV_CMD_GET_GATEWAYS ;
 int BATADV_IF_DEFAULT ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NLM_F_MULTI ;
 struct batadv_gw_node* batadv_gw_get_selected_gw_node (struct batadv_priv*) ;
 int batadv_gw_node_put (struct batadv_gw_node*) ;
 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,int ) ;
 int batadv_neigh_ifinfo_put (struct batadv_neigh_ifinfo*) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 int batadv_netlink_family ;
 struct batadv_neigh_node* batadv_orig_router_get (TYPE_5__*,int ) ;
 int genl_dump_check_consistent (struct netlink_callback*,void*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int batadv_iv_gw_dump_entry(struct sk_buff *msg, u32 portid,
       struct netlink_callback *cb,
       struct batadv_priv *bat_priv,
       struct batadv_gw_node *gw_node)
{
 struct batadv_neigh_ifinfo *router_ifinfo = ((void*)0);
 struct batadv_neigh_node *router;
 struct batadv_gw_node *curr_gw = ((void*)0);
 int ret = 0;
 void *hdr;

 router = batadv_orig_router_get(gw_node->orig_node, BATADV_IF_DEFAULT);
 if (!router)
  goto out;

 router_ifinfo = batadv_neigh_ifinfo_get(router, BATADV_IF_DEFAULT);
 if (!router_ifinfo)
  goto out;

 curr_gw = batadv_gw_get_selected_gw_node(bat_priv);

 hdr = genlmsg_put(msg, portid, cb->nlh->nlmsg_seq,
     &batadv_netlink_family, NLM_F_MULTI,
     BATADV_CMD_GET_GATEWAYS);
 if (!hdr) {
  ret = -ENOBUFS;
  goto out;
 }

 genl_dump_check_consistent(cb, hdr);

 ret = -EMSGSIZE;

 if (curr_gw == gw_node)
  if (nla_put_flag(msg, BATADV_ATTR_FLAG_BEST)) {
   genlmsg_cancel(msg, hdr);
   goto out;
  }

 if (nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN,
      gw_node->orig_node->orig) ||
     nla_put_u8(msg, BATADV_ATTR_TQ, router_ifinfo->bat_iv.tq_avg) ||
     nla_put(msg, BATADV_ATTR_ROUTER, ETH_ALEN,
      router->addr) ||
     nla_put_string(msg, BATADV_ATTR_HARD_IFNAME,
      router->if_incoming->net_dev->name) ||
     nla_put_u32(msg, BATADV_ATTR_BANDWIDTH_DOWN,
   gw_node->bandwidth_down) ||
     nla_put_u32(msg, BATADV_ATTR_BANDWIDTH_UP,
   gw_node->bandwidth_up)) {
  genlmsg_cancel(msg, hdr);
  goto out;
 }

 genlmsg_end(msg, hdr);
 ret = 0;

out:
 if (curr_gw)
  batadv_gw_node_put(curr_gw);
 if (router_ifinfo)
  batadv_neigh_ifinfo_put(router_ifinfo);
 if (router)
  batadv_neigh_node_put(router);
 return ret;
}
