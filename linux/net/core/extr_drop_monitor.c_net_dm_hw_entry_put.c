
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_dm_hw_entry {int count; int trap_name; } ;


 int EMSGSIZE ;
 int NET_DM_ATTR_HW_ENTRY ;
 int NET_DM_ATTR_HW_TRAP_COUNT ;
 int NET_DM_ATTR_HW_TRAP_NAME ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int net_dm_hw_entry_put(struct sk_buff *msg,
          const struct net_dm_hw_entry *hw_entry)
{
 struct nlattr *attr;

 attr = nla_nest_start(msg, NET_DM_ATTR_HW_ENTRY);
 if (!attr)
  return -EMSGSIZE;

 if (nla_put_string(msg, NET_DM_ATTR_HW_TRAP_NAME, hw_entry->trap_name))
  goto nla_put_failure;

 if (nla_put_u32(msg, NET_DM_ATTR_HW_TRAP_COUNT, hw_entry->count))
  goto nla_put_failure;

 nla_nest_end(msg, attr);

 return 0;

nla_put_failure:
 nla_nest_cancel(msg, attr);
 return -EMSGSIZE;
}
