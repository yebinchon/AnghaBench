
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct devlink_dpipe_value {int dummy; } ;


 int DEVLINK_ATTR_DPIPE_ACTION_VALUE ;
 int EMSGSIZE ;
 int devlink_dpipe_action_value_put (struct sk_buff*,struct devlink_dpipe_value*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;

__attribute__((used)) static int devlink_dpipe_action_values_put(struct sk_buff *skb,
        struct devlink_dpipe_value *values,
        unsigned int values_count)
{
 struct nlattr *action_attr;
 int i;
 int err;

 for (i = 0; i < values_count; i++) {
  action_attr = nla_nest_start_noflag(skb,
          DEVLINK_ATTR_DPIPE_ACTION_VALUE);
  if (!action_attr)
   return -EMSGSIZE;
  err = devlink_dpipe_action_value_put(skb, &values[i]);
  if (err)
   goto err_action_value_put;
  nla_nest_end(skb, action_attr);
 }
 return 0;

err_action_value_put:
 nla_nest_cancel(skb, action_attr);
 return err;
}
