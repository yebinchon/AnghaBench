
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_resource_size_params {int unit; int size_min; int size_max; int size_granularity; } ;
struct devlink_resource {struct devlink_resource_size_params size_params; } ;


 int DEVLINK_ATTR_PAD ;
 int DEVLINK_ATTR_RESOURCE_SIZE_GRAN ;
 int DEVLINK_ATTR_RESOURCE_SIZE_MAX ;
 int DEVLINK_ATTR_RESOURCE_SIZE_MIN ;
 int DEVLINK_ATTR_RESOURCE_UNIT ;
 int EMSGSIZE ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
devlink_resource_size_params_put(struct devlink_resource *resource,
     struct sk_buff *skb)
{
 struct devlink_resource_size_params *size_params;

 size_params = &resource->size_params;
 if (nla_put_u64_64bit(skb, DEVLINK_ATTR_RESOURCE_SIZE_GRAN,
         size_params->size_granularity, DEVLINK_ATTR_PAD) ||
     nla_put_u64_64bit(skb, DEVLINK_ATTR_RESOURCE_SIZE_MAX,
         size_params->size_max, DEVLINK_ATTR_PAD) ||
     nla_put_u64_64bit(skb, DEVLINK_ATTR_RESOURCE_SIZE_MIN,
         size_params->size_min, DEVLINK_ATTR_PAD) ||
     nla_put_u8(skb, DEVLINK_ATTR_RESOURCE_UNIT, size_params->unit))
  return -EMSGSIZE;
 return 0;
}
