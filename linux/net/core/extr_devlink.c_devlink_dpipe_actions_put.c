
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct devlink_dpipe_table {int priv; TYPE_1__* table_ops; } ;
struct TYPE_2__ {scalar_t__ (* actions_dump ) (int ,struct sk_buff*) ;} ;


 int DEVLINK_ATTR_DPIPE_TABLE_ACTIONS ;
 int EMSGSIZE ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static int devlink_dpipe_actions_put(struct devlink_dpipe_table *table,
         struct sk_buff *skb)
{
 struct nlattr *actions_attr;

 actions_attr = nla_nest_start_noflag(skb,
          DEVLINK_ATTR_DPIPE_TABLE_ACTIONS);
 if (!actions_attr)
  return -EMSGSIZE;

 if (table->table_ops->actions_dump(table->priv, skb))
  goto nla_put_failure;

 nla_nest_end(skb, actions_attr);
 return 0;

nla_put_failure:
 nla_nest_cancel(skb, actions_attr);
 return -EMSGSIZE;
}
