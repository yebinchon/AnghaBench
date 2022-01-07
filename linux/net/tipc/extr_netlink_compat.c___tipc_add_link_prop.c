
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_compat_msg {int cmd; } ;
struct tipc_link_config {int value; } ;
struct sk_buff {int dummy; } ;


 int EINVAL ;



 int TIPC_NLA_PROP_PRIO ;
 int TIPC_NLA_PROP_TOL ;
 int TIPC_NLA_PROP_WIN ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int __tipc_add_link_prop(struct sk_buff *skb,
    struct tipc_nl_compat_msg *msg,
    struct tipc_link_config *lc)
{
 switch (msg->cmd) {
 case 130:
  return nla_put_u32(skb, TIPC_NLA_PROP_PRIO, ntohl(lc->value));
 case 129:
  return nla_put_u32(skb, TIPC_NLA_PROP_TOL, ntohl(lc->value));
 case 128:
  return nla_put_u32(skb, TIPC_NLA_PROP_WIN, ntohl(lc->value));
 }

 return -EINVAL;
}
