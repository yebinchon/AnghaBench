
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udp_media_addr {int dummy; } ;
struct TYPE_6__ {int list; } ;
struct udp_bearer {TYPE_3__ rcast; } ;
struct tipc_nl_msg {int skb; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_4__ {int value; } ;
struct tipc_bearer {TYPE_2__ bcast_addr; int media_ptr; TYPE_1__ addr; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int ENODEV ;
 int TIPC_NLA_BEARER_UDP_OPTS ;
 int TIPC_NLA_UDP_LOCAL ;
 int TIPC_NLA_UDP_MULTI_REMOTEIP ;
 int TIPC_NLA_UDP_REMOTE ;
 scalar_t__ __tipc_nl_add_udp_addr (int ,struct udp_media_addr*,int ) ;
 int list_empty (int *) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put_flag (int ,int ) ;
 struct udp_bearer* rtnl_dereference (int ) ;

int tipc_udp_nl_add_bearer_data(struct tipc_nl_msg *msg, struct tipc_bearer *b)
{
 struct udp_media_addr *src = (struct udp_media_addr *)&b->addr.value;
 struct udp_media_addr *dst;
 struct udp_bearer *ub;
 struct nlattr *nest;

 ub = rtnl_dereference(b->media_ptr);
 if (!ub)
  return -ENODEV;

 nest = nla_nest_start_noflag(msg->skb, TIPC_NLA_BEARER_UDP_OPTS);
 if (!nest)
  goto msg_full;

 if (__tipc_nl_add_udp_addr(msg->skb, src, TIPC_NLA_UDP_LOCAL))
  goto msg_full;

 dst = (struct udp_media_addr *)&b->bcast_addr.value;
 if (__tipc_nl_add_udp_addr(msg->skb, dst, TIPC_NLA_UDP_REMOTE))
  goto msg_full;

 if (!list_empty(&ub->rcast.list)) {
  if (nla_put_flag(msg->skb, TIPC_NLA_UDP_MULTI_REMOTEIP))
   goto msg_full;
 }

 nla_nest_end(msg->skb, nest);
 return 0;
msg_full:
 nla_nest_cancel(msg->skb, nest);
 return -EMSGSIZE;
}
