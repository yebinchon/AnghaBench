
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct tipc_monitor {int lock; int list_gen; int peer_cnt; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int NLM_F_MULTI ;
 int TIPC_MAX_BEARER_NAME ;
 int TIPC_NLA_MON ;
 int TIPC_NLA_MON_ACTIVE ;
 int TIPC_NLA_MON_BEARER_NAME ;
 int TIPC_NLA_MON_LISTGEN ;
 int TIPC_NLA_MON_PEERCNT ;
 int TIPC_NLA_MON_REF ;
 int TIPC_NL_MON_GET ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put_flag (int ,int ) ;
 scalar_t__ nla_put_string (int ,int ,char*) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tipc_bearer_get_name (struct net*,char*,int ) ;
 int tipc_genl_family ;
 scalar_t__ tipc_mon_is_active (struct net*,struct tipc_monitor*) ;
 struct tipc_monitor* tipc_monitor (struct net*,int ) ;

int __tipc_nl_add_monitor(struct net *net, struct tipc_nl_msg *msg,
     u32 bearer_id)
{
 struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
 char bearer_name[TIPC_MAX_BEARER_NAME];
 struct nlattr *attrs;
 void *hdr;
 int ret;

 ret = tipc_bearer_get_name(net, bearer_name, bearer_id);
 if (ret || !mon)
  return 0;

 hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
     NLM_F_MULTI, TIPC_NL_MON_GET);
 if (!hdr)
  return -EMSGSIZE;

 attrs = nla_nest_start_noflag(msg->skb, TIPC_NLA_MON);
 if (!attrs)
  goto msg_full;

 read_lock_bh(&mon->lock);
 if (nla_put_u32(msg->skb, TIPC_NLA_MON_REF, bearer_id))
  goto attr_msg_full;
 if (tipc_mon_is_active(net, mon))
  if (nla_put_flag(msg->skb, TIPC_NLA_MON_ACTIVE))
   goto attr_msg_full;
 if (nla_put_string(msg->skb, TIPC_NLA_MON_BEARER_NAME, bearer_name))
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_MON_PEERCNT, mon->peer_cnt))
  goto attr_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_MON_LISTGEN, mon->list_gen))
  goto attr_msg_full;

 read_unlock_bh(&mon->lock);
 nla_nest_end(msg->skb, attrs);
 genlmsg_end(msg->skb, hdr);

 return 0;

attr_msg_full:
 read_unlock_bh(&mon->lock);
 nla_nest_cancel(msg->skb, attrs);
msg_full:
 genlmsg_cancel(msg->skb, hdr);

 return -EMSGSIZE;
}
