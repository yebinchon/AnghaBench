
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct devlink_dpipe_header {int global; int id; struct devlink_dpipe_field* fields; } ;
struct devlink_dpipe_field {int id; } ;
struct devlink_dpipe_action {size_t field_id; int header_index; int type; struct devlink_dpipe_header* header; } ;


 int DEVLINK_ATTR_DPIPE_ACTION ;
 int DEVLINK_ATTR_DPIPE_ACTION_TYPE ;
 int DEVLINK_ATTR_DPIPE_FIELD_ID ;
 int DEVLINK_ATTR_DPIPE_HEADER_GLOBAL ;
 int DEVLINK_ATTR_DPIPE_HEADER_ID ;
 int DEVLINK_ATTR_DPIPE_HEADER_INDEX ;
 int EMSGSIZE ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

int devlink_dpipe_action_put(struct sk_buff *skb,
        struct devlink_dpipe_action *action)
{
 struct devlink_dpipe_header *header = action->header;
 struct devlink_dpipe_field *field = &header->fields[action->field_id];
 struct nlattr *action_attr;

 action_attr = nla_nest_start_noflag(skb, DEVLINK_ATTR_DPIPE_ACTION);
 if (!action_attr)
  return -EMSGSIZE;

 if (nla_put_u32(skb, DEVLINK_ATTR_DPIPE_ACTION_TYPE, action->type) ||
     nla_put_u32(skb, DEVLINK_ATTR_DPIPE_HEADER_INDEX, action->header_index) ||
     nla_put_u32(skb, DEVLINK_ATTR_DPIPE_HEADER_ID, header->id) ||
     nla_put_u32(skb, DEVLINK_ATTR_DPIPE_FIELD_ID, field->id) ||
     nla_put_u8(skb, DEVLINK_ATTR_DPIPE_HEADER_GLOBAL, header->global))
  goto nla_put_failure;

 nla_nest_end(skb, action_attr);
 return 0;

nla_put_failure:
 nla_nest_cancel(skb, action_attr);
 return -EMSGSIZE;
}
