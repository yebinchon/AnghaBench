
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sched_entry {int interval; int gate_mask; int command; int index; } ;
struct nlattr {int dummy; } ;


 int ENOSPC ;
 int TCA_TAPRIO_SCHED_ENTRY ;
 int TCA_TAPRIO_SCHED_ENTRY_CMD ;
 int TCA_TAPRIO_SCHED_ENTRY_GATE_MASK ;
 int TCA_TAPRIO_SCHED_ENTRY_INDEX ;
 int TCA_TAPRIO_SCHED_ENTRY_INTERVAL ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int dump_entry(struct sk_buff *msg,
        const struct sched_entry *entry)
{
 struct nlattr *item;

 item = nla_nest_start_noflag(msg, TCA_TAPRIO_SCHED_ENTRY);
 if (!item)
  return -ENOSPC;

 if (nla_put_u32(msg, TCA_TAPRIO_SCHED_ENTRY_INDEX, entry->index))
  goto nla_put_failure;

 if (nla_put_u8(msg, TCA_TAPRIO_SCHED_ENTRY_CMD, entry->command))
  goto nla_put_failure;

 if (nla_put_u32(msg, TCA_TAPRIO_SCHED_ENTRY_GATE_MASK,
   entry->gate_mask))
  goto nla_put_failure;

 if (nla_put_u32(msg, TCA_TAPRIO_SCHED_ENTRY_INTERVAL,
   entry->interval))
  goto nla_put_failure;

 return nla_nest_end(msg, item);

nla_put_failure:
 nla_nest_cancel(msg, item);
 return -1;
}
