
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_bearer {void* mtu; TYPE_1__* media; void* window; void* priority; void* tolerance; } ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int extack; int * attrs; } ;
struct TYPE_2__ {scalar_t__ type_id; } ;


 int EINVAL ;
 scalar_t__ TIPC_MEDIA_TYPE_UDP ;
 size_t TIPC_NLA_BEARER ;
 int TIPC_NLA_BEARER_MAX ;
 size_t TIPC_NLA_BEARER_NAME ;
 size_t TIPC_NLA_BEARER_PROP ;
 int TIPC_NLA_PROP_MAX ;
 size_t TIPC_NLA_PROP_MTU ;
 size_t TIPC_NLA_PROP_PRIO ;
 size_t TIPC_NLA_PROP_TOL ;
 size_t TIPC_NLA_PROP_WIN ;
 char* nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,int ,int ,int ) ;
 struct net* sock_net (int ) ;
 struct tipc_bearer* tipc_bearer_find (struct net*,char*) ;
 int tipc_nl_bearer_policy ;
 int tipc_nl_parse_link_prop (struct nlattr*,struct nlattr**) ;
 int tipc_node_apply_property (struct net*,struct tipc_bearer*,size_t) ;
 scalar_t__ tipc_udp_mtu_bad (void*) ;

int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
{
 struct tipc_bearer *b;
 struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];
 struct net *net = sock_net(skb->sk);
 char *name;
 int err;

 if (!info->attrs[TIPC_NLA_BEARER])
  return -EINVAL;

 err = nla_parse_nested_deprecated(attrs, TIPC_NLA_BEARER_MAX,
       info->attrs[TIPC_NLA_BEARER],
       tipc_nl_bearer_policy, info->extack);
 if (err)
  return err;

 if (!attrs[TIPC_NLA_BEARER_NAME])
  return -EINVAL;
 name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);

 b = tipc_bearer_find(net, name);
 if (!b)
  return -EINVAL;

 if (attrs[TIPC_NLA_BEARER_PROP]) {
  struct nlattr *props[TIPC_NLA_PROP_MAX + 1];

  err = tipc_nl_parse_link_prop(attrs[TIPC_NLA_BEARER_PROP],
           props);
  if (err)
   return err;

  if (props[TIPC_NLA_PROP_TOL]) {
   b->tolerance = nla_get_u32(props[TIPC_NLA_PROP_TOL]);
   tipc_node_apply_property(net, b, TIPC_NLA_PROP_TOL);
  }
  if (props[TIPC_NLA_PROP_PRIO])
   b->priority = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
  if (props[TIPC_NLA_PROP_WIN])
   b->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
  if (props[TIPC_NLA_PROP_MTU]) {
   if (b->media->type_id != TIPC_MEDIA_TYPE_UDP)
    return -EINVAL;







  }
 }

 return 0;
}
