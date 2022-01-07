
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct TYPE_2__ {int sent_pkts; int recv_pkts; } ;
struct tipc_link {TYPE_1__ stats; int priority; int window; int tolerance; scalar_t__ active; int mtu; int name; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int TIPC_NLA_LINK ;
 int TIPC_NLA_LINK_ACTIVE ;
 int TIPC_NLA_LINK_DEST ;
 int TIPC_NLA_LINK_MTU ;
 int TIPC_NLA_LINK_NAME ;
 int TIPC_NLA_LINK_PROP ;
 int TIPC_NLA_LINK_RX ;
 int TIPC_NLA_LINK_TX ;
 int TIPC_NLA_LINK_UP ;
 int TIPC_NLA_PROP_PRIO ;
 int TIPC_NLA_PROP_TOL ;
 int TIPC_NLA_PROP_WIN ;
 int TIPC_NL_LINK_GET ;
 int __tipc_nl_add_stats (int ,TYPE_1__*) ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int,int ) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put_flag (int ,int ) ;
 scalar_t__ nla_put_string (int ,int ,int ) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;
 int tipc_cluster_mask (int ) ;
 int tipc_genl_family ;
 scalar_t__ tipc_link_is_up (struct tipc_link*) ;
 int tipc_own_addr (struct net*) ;

int __tipc_nl_add_link(struct net *net, struct tipc_nl_msg *msg,
         struct tipc_link *link, int nlflags)
{
 u32 self = tipc_own_addr(net);
 struct nlattr *attrs;
 struct nlattr *prop;
 void *hdr;
 int err;

 hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
     nlflags, TIPC_NL_LINK_GET);
 if (!hdr)
  return -EMSGSIZE;

 attrs = nla_nest_start_noflag(msg->skb, TIPC_NLA_LINK);
 if (!attrs)
  goto msg_full;

 if (nla_put_string(msg->skb, TIPC_NLA_LINK_NAME, link->name))
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_LINK_DEST, tipc_cluster_mask(self)))
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_LINK_MTU, link->mtu))
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_LINK_RX, link->stats.recv_pkts))
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_LINK_TX, link->stats.sent_pkts))
  goto attr_msg_full;

 if (tipc_link_is_up(link))
  if (nla_put_flag(msg->skb, TIPC_NLA_LINK_UP))
   goto attr_msg_full;
 if (link->active)
  if (nla_put_flag(msg->skb, TIPC_NLA_LINK_ACTIVE))
   goto attr_msg_full;

 prop = nla_nest_start_noflag(msg->skb, TIPC_NLA_LINK_PROP);
 if (!prop)
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_PROP_PRIO, link->priority))
  goto prop_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, link->tolerance))
  goto prop_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN,
   link->window))
  goto prop_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_PROP_PRIO, link->priority))
  goto prop_msg_full;
 nla_nest_end(msg->skb, prop);

 err = __tipc_nl_add_stats(msg->skb, &link->stats);
 if (err)
  goto attr_msg_full;

 nla_nest_end(msg->skb, attrs);
 genlmsg_end(msg->skb, hdr);

 return 0;

prop_msg_full:
 nla_nest_cancel(msg->skb, prop);
attr_msg_full:
 nla_nest_cancel(msg->skb, attrs);
msg_full:
 genlmsg_cancel(msg->skb, hdr);

 return -EMSGSIZE;
}
