
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct tipc_bearer {TYPE_1__* media; int mtu; int window; int tolerance; int priority; int name; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ type_id; } ;


 int EMSGSIZE ;
 scalar_t__ TIPC_MEDIA_TYPE_UDP ;
 int TIPC_NLA_BEARER ;
 int TIPC_NLA_BEARER_NAME ;
 int TIPC_NLA_BEARER_PROP ;
 int TIPC_NLA_PROP_MTU ;
 int TIPC_NLA_PROP_PRIO ;
 int TIPC_NLA_PROP_TOL ;
 int TIPC_NLA_PROP_WIN ;
 int TIPC_NL_BEARER_GET ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int,int ) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put_string (int ,int ,int ) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;
 int tipc_genl_family ;
 scalar_t__ tipc_udp_nl_add_bearer_data (struct tipc_nl_msg*,struct tipc_bearer*) ;

__attribute__((used)) static int __tipc_nl_add_bearer(struct tipc_nl_msg *msg,
    struct tipc_bearer *bearer, int nlflags)
{
 void *hdr;
 struct nlattr *attrs;
 struct nlattr *prop;

 hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
     nlflags, TIPC_NL_BEARER_GET);
 if (!hdr)
  return -EMSGSIZE;

 attrs = nla_nest_start_noflag(msg->skb, TIPC_NLA_BEARER);
 if (!attrs)
  goto msg_full;

 if (nla_put_string(msg->skb, TIPC_NLA_BEARER_NAME, bearer->name))
  goto attr_msg_full;

 prop = nla_nest_start_noflag(msg->skb, TIPC_NLA_BEARER_PROP);
 if (!prop)
  goto prop_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_PROP_PRIO, bearer->priority))
  goto prop_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, bearer->tolerance))
  goto prop_msg_full;
 if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bearer->window))
  goto prop_msg_full;
 if (bearer->media->type_id == TIPC_MEDIA_TYPE_UDP)
  if (nla_put_u32(msg->skb, TIPC_NLA_PROP_MTU, bearer->mtu))
   goto prop_msg_full;

 nla_nest_end(msg->skb, prop);
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
