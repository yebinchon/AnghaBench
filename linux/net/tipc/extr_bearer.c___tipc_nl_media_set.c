
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media {scalar_t__ type_id; void* mtu; void* window; void* priority; void* tolerance; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int extack; int * attrs; } ;


 int EINVAL ;
 scalar_t__ TIPC_MEDIA_TYPE_UDP ;
 int TIPC_NLA_BEARER_MAX ;
 size_t TIPC_NLA_MEDIA ;
 int TIPC_NLA_MEDIA_MAX ;
 size_t TIPC_NLA_MEDIA_NAME ;
 size_t TIPC_NLA_MEDIA_PROP ;
 int TIPC_NLA_PROP_MAX ;
 size_t TIPC_NLA_PROP_MTU ;
 size_t TIPC_NLA_PROP_PRIO ;
 size_t TIPC_NLA_PROP_TOL ;
 size_t TIPC_NLA_PROP_WIN ;
 char* nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,int ,int ,int ) ;
 struct tipc_media* tipc_media_find (char*) ;
 int tipc_nl_media_policy ;
 int tipc_nl_parse_link_prop (struct nlattr*,struct nlattr**) ;
 scalar_t__ tipc_udp_mtu_bad (void*) ;

int __tipc_nl_media_set(struct sk_buff *skb, struct genl_info *info)
{
 int err;
 char *name;
 struct tipc_media *m;
 struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];

 if (!info->attrs[TIPC_NLA_MEDIA])
  return -EINVAL;

 err = nla_parse_nested_deprecated(attrs, TIPC_NLA_MEDIA_MAX,
       info->attrs[TIPC_NLA_MEDIA],
       tipc_nl_media_policy, info->extack);

 if (!attrs[TIPC_NLA_MEDIA_NAME])
  return -EINVAL;
 name = nla_data(attrs[TIPC_NLA_MEDIA_NAME]);

 m = tipc_media_find(name);
 if (!m)
  return -EINVAL;

 if (attrs[TIPC_NLA_MEDIA_PROP]) {
  struct nlattr *props[TIPC_NLA_PROP_MAX + 1];

  err = tipc_nl_parse_link_prop(attrs[TIPC_NLA_MEDIA_PROP],
           props);
  if (err)
   return err;

  if (props[TIPC_NLA_PROP_TOL])
   m->tolerance = nla_get_u32(props[TIPC_NLA_PROP_TOL]);
  if (props[TIPC_NLA_PROP_PRIO])
   m->priority = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
  if (props[TIPC_NLA_PROP_WIN])
   m->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
  if (props[TIPC_NLA_PROP_MTU]) {
   if (m->type_id != TIPC_MEDIA_TYPE_UDP)
    return -EINVAL;






  }
 }

 return 0;
}
