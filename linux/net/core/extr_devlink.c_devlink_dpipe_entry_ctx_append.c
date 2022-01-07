
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_entry {int dummy; } ;
struct devlink_dpipe_dump_ctx {int skb; } ;


 int devlink_dpipe_entry_put (int ,struct devlink_dpipe_entry*) ;

int devlink_dpipe_entry_ctx_append(struct devlink_dpipe_dump_ctx *dump_ctx,
       struct devlink_dpipe_entry *entry)
{
 return devlink_dpipe_entry_put(dump_ctx->skb, entry);
}
