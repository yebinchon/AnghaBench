
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_dm_hw_entries {int num_entries; int * entries; } ;


 int EMSGSIZE ;
 int NET_DM_ATTR_HW_ENTRIES ;
 int net_dm_hw_entry_put (struct sk_buff*,int *) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int net_dm_hw_entries_put(struct sk_buff *msg,
     const struct net_dm_hw_entries *hw_entries)
{
 struct nlattr *attr;
 int i;

 attr = nla_nest_start(msg, NET_DM_ATTR_HW_ENTRIES);
 if (!attr)
  return -EMSGSIZE;

 for (i = 0; i < hw_entries->num_entries; i++) {
  int rc;

  rc = net_dm_hw_entry_put(msg, &hw_entries->entries[i]);
  if (rc)
   goto nla_put_failure;
 }

 nla_nest_end(msg, attr);

 return 0;

nla_put_failure:
 nla_nest_cancel(msg, attr);
 return -EMSGSIZE;
}
