
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlmsghdr {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;
struct devlink_dpipe_table {int counters_enabled; int priv; TYPE_1__* table_ops; } ;
struct devlink_dpipe_dump_ctx {int cmd; int * skb; struct genl_info* info; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;
struct TYPE_2__ {int (* entries_dump ) (int ,int ,struct devlink_dpipe_dump_ctx*) ;} ;


 int NLMSG_DONE ;
 int NLM_F_MULTI ;
 int devlink_dpipe_send_and_alloc_skb (int **,struct genl_info*) ;
 int genlmsg_reply (int *,struct genl_info*) ;
 struct nlmsghdr* nlmsg_put (int *,int ,int ,int ,int ,int) ;
 int stub1 (int ,int ,struct devlink_dpipe_dump_ctx*) ;

__attribute__((used)) static int devlink_dpipe_entries_fill(struct genl_info *info,
          enum devlink_command cmd, int flags,
          struct devlink_dpipe_table *table)
{
 struct devlink_dpipe_dump_ctx dump_ctx;
 struct nlmsghdr *nlh;
 int err;

 dump_ctx.skb = ((void*)0);
 dump_ctx.cmd = cmd;
 dump_ctx.info = info;

 err = table->table_ops->entries_dump(table->priv,
          table->counters_enabled,
          &dump_ctx);
 if (err)
  return err;

send_done:
 nlh = nlmsg_put(dump_ctx.skb, info->snd_portid, info->snd_seq,
   NLMSG_DONE, 0, flags | NLM_F_MULTI);
 if (!nlh) {
  err = devlink_dpipe_send_and_alloc_skb(&dump_ctx.skb, info);
  if (err)
   return err;
  goto send_done;
 }
 return genlmsg_reply(dump_ctx.skb, info);
}
