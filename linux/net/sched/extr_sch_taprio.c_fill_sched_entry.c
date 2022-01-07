
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sched_entry {scalar_t__ interval; void* gate_mask; int command; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 size_t TCA_TAPRIO_SCHED_ENTRY_CMD ;
 size_t TCA_TAPRIO_SCHED_ENTRY_GATE_MASK ;
 size_t TCA_TAPRIO_SCHED_ENTRY_INTERVAL ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static int fill_sched_entry(struct nlattr **tb, struct sched_entry *entry,
       struct netlink_ext_ack *extack)
{
 u32 interval = 0;

 if (tb[TCA_TAPRIO_SCHED_ENTRY_CMD])
  entry->command = nla_get_u8(
   tb[TCA_TAPRIO_SCHED_ENTRY_CMD]);

 if (tb[TCA_TAPRIO_SCHED_ENTRY_GATE_MASK])
  entry->gate_mask = nla_get_u32(
   tb[TCA_TAPRIO_SCHED_ENTRY_GATE_MASK]);

 if (tb[TCA_TAPRIO_SCHED_ENTRY_INTERVAL])
  interval = nla_get_u32(
   tb[TCA_TAPRIO_SCHED_ENTRY_INTERVAL]);

 if (interval == 0) {
  NL_SET_ERR_MSG(extack, "Invalid interval for schedule entry");
  return -EINVAL;
 }

 entry->interval = interval;

 return 0;
}
