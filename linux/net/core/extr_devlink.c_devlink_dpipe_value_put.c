
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_dpipe_value {int mapping_value; scalar_t__ mapping_valid; scalar_t__ mask; int value_size; scalar_t__ value; } ;


 int DEVLINK_ATTR_DPIPE_VALUE ;
 int DEVLINK_ATTR_DPIPE_VALUE_MAPPING ;
 int DEVLINK_ATTR_DPIPE_VALUE_MASK ;
 int EMSGSIZE ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int devlink_dpipe_value_put(struct sk_buff *skb,
       struct devlink_dpipe_value *value)
{
 if (nla_put(skb, DEVLINK_ATTR_DPIPE_VALUE,
      value->value_size, value->value))
  return -EMSGSIZE;
 if (value->mask)
  if (nla_put(skb, DEVLINK_ATTR_DPIPE_VALUE_MASK,
       value->value_size, value->mask))
   return -EMSGSIZE;
 if (value->mapping_valid)
  if (nla_put_u32(skb, DEVLINK_ATTR_DPIPE_VALUE_MAPPING,
    value->mapping_value))
   return -EMSGSIZE;
 return 0;
}
