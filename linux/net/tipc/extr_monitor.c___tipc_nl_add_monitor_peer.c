
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_peer {scalar_t__ is_head; scalar_t__ is_local; scalar_t__ is_up; int applied; int addr; struct tipc_mon_domain* domain; } ;
struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct tipc_mon_domain {int member_cnt; int members; int up_map; int gen; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int NLM_F_MULTI ;
 int TIPC_NLA_MON_PEER ;
 int TIPC_NLA_MON_PEER_ADDR ;
 int TIPC_NLA_MON_PEER_APPLIED ;
 int TIPC_NLA_MON_PEER_DOMGEN ;
 int TIPC_NLA_MON_PEER_HEAD ;
 int TIPC_NLA_MON_PEER_LOCAL ;
 int TIPC_NLA_MON_PEER_MEMBERS ;
 int TIPC_NLA_MON_PEER_PAD ;
 int TIPC_NLA_MON_PEER_UP ;
 int TIPC_NLA_MON_PEER_UPMAP ;
 int TIPC_NL_MON_PEER_GET ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put (int ,int ,int,int *) ;
 scalar_t__ nla_put_flag (int ,int ) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (int ,int ,int ,int ) ;
 int tipc_genl_family ;

__attribute__((used)) static int __tipc_nl_add_monitor_peer(struct tipc_peer *peer,
          struct tipc_nl_msg *msg)
{
 struct tipc_mon_domain *dom = peer->domain;
 struct nlattr *attrs;
 void *hdr;

 hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
     NLM_F_MULTI, TIPC_NL_MON_PEER_GET);
 if (!hdr)
  return -EMSGSIZE;

 attrs = nla_nest_start_noflag(msg->skb, TIPC_NLA_MON_PEER);
 if (!attrs)
  goto msg_full;

 if (nla_put_u32(msg->skb, TIPC_NLA_MON_PEER_ADDR, peer->addr))
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_MON_PEER_APPLIED, peer->applied))
  goto attr_msg_full;

 if (peer->is_up)
  if (nla_put_flag(msg->skb, TIPC_NLA_MON_PEER_UP))
   goto attr_msg_full;
 if (peer->is_local)
  if (nla_put_flag(msg->skb, TIPC_NLA_MON_PEER_LOCAL))
   goto attr_msg_full;
 if (peer->is_head)
  if (nla_put_flag(msg->skb, TIPC_NLA_MON_PEER_HEAD))
   goto attr_msg_full;

 if (dom) {
  if (nla_put_u32(msg->skb, TIPC_NLA_MON_PEER_DOMGEN, dom->gen))
   goto attr_msg_full;
  if (nla_put_u64_64bit(msg->skb, TIPC_NLA_MON_PEER_UPMAP,
          dom->up_map, TIPC_NLA_MON_PEER_PAD))
   goto attr_msg_full;
  if (nla_put(msg->skb, TIPC_NLA_MON_PEER_MEMBERS,
       dom->member_cnt * sizeof(u32), &dom->members))
   goto attr_msg_full;
 }

 nla_nest_end(msg->skb, attrs);
 genlmsg_end(msg->skb, hdr);
 return 0;

attr_msg_full:
 nla_nest_cancel(msg->skb, attrs);
msg_full:
 genlmsg_cancel(msg->skb, hdr);

 return -EMSGSIZE;
}
