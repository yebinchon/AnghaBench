
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int TIPC_NLA_MON ;
 int TIPC_NLA_MON_ACTIVATION_THRESHOLD ;
 int TIPC_NL_MON_GET ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;
 int tipc_genl_family ;
 int tipc_nl_monitor_get_threshold (struct net*) ;

__attribute__((used)) static int __tipc_nl_add_monitor_prop(struct net *net, struct tipc_nl_msg *msg)
{
 struct nlattr *attrs;
 void *hdr;
 u32 val;

 hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
     0, TIPC_NL_MON_GET);
 if (!hdr)
  return -EMSGSIZE;

 attrs = nla_nest_start_noflag(msg->skb, TIPC_NLA_MON);
 if (!attrs)
  goto msg_full;

 val = tipc_nl_monitor_get_threshold(net);

 if (nla_put_u32(msg->skb, TIPC_NLA_MON_ACTIVATION_THRESHOLD, val))
  goto attr_msg_full;

 nla_nest_end(msg->skb, attrs);
 genlmsg_end(msg->skb, hdr);

 return 0;

attr_msg_full:
 nla_nest_cancel(msg->skb, attrs);
msg_full:
 genlmsg_cancel(msg->skb, hdr);

 return -EMSGSIZE;
}
