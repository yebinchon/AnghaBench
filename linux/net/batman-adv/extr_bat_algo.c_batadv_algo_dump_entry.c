
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct batadv_algo_ops {int name; } ;


 int BATADV_ATTR_ALGO_NAME ;
 int BATADV_CMD_GET_ROUTING_ALGOS ;
 int EMSGSIZE ;
 int NLM_F_MULTI ;
 int batadv_netlink_family ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int batadv_algo_dump_entry(struct sk_buff *msg, u32 portid, u32 seq,
      struct batadv_algo_ops *bat_algo_ops)
{
 void *hdr;

 hdr = genlmsg_put(msg, portid, seq, &batadv_netlink_family,
     NLM_F_MULTI, BATADV_CMD_GET_ROUTING_ALGOS);
 if (!hdr)
  return -EMSGSIZE;

 if (nla_put_string(msg, BATADV_ATTR_ALGO_NAME, bat_algo_ops->name))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
