
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_dpipe_value {int match; } ;


 int EINVAL ;
 int EMSGSIZE ;
 scalar_t__ devlink_dpipe_match_put (struct sk_buff*,int ) ;
 scalar_t__ devlink_dpipe_value_put (struct sk_buff*,struct devlink_dpipe_value*) ;

__attribute__((used)) static int devlink_dpipe_match_value_put(struct sk_buff *skb,
      struct devlink_dpipe_value *value)
{
 if (!value->match)
  return -EINVAL;
 if (devlink_dpipe_match_put(skb, value->match))
  return -EMSGSIZE;
 if (devlink_dpipe_value_put(skb, value))
  return -EMSGSIZE;
 return 0;
}
