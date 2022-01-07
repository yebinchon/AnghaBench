
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_dpipe_dump_ctx {int skb; int nest; TYPE_1__* info; int hdr; int cmd; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {struct devlink** user_ptr; int snd_seq; int snd_portid; } ;


 int DEVLINK_ATTR_DPIPE_ENTRIES ;
 int EMSGSIZE ;
 int NLM_F_MULTI ;
 int devlink_dpipe_send_and_alloc_skb (int *,TYPE_1__*) ;
 int devlink_nl_family ;
 scalar_t__ devlink_nl_put_handle (int ,struct devlink*) ;
 int genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 int nla_nest_start_noflag (int ,int ) ;
 int nlmsg_free (int ) ;

int devlink_dpipe_entry_ctx_prepare(struct devlink_dpipe_dump_ctx *dump_ctx)
{
 struct devlink *devlink;
 int err;

 err = devlink_dpipe_send_and_alloc_skb(&dump_ctx->skb,
            dump_ctx->info);
 if (err)
  return err;

 dump_ctx->hdr = genlmsg_put(dump_ctx->skb,
        dump_ctx->info->snd_portid,
        dump_ctx->info->snd_seq,
        &devlink_nl_family, NLM_F_MULTI,
        dump_ctx->cmd);
 if (!dump_ctx->hdr)
  goto nla_put_failure;

 devlink = dump_ctx->info->user_ptr[0];
 if (devlink_nl_put_handle(dump_ctx->skb, devlink))
  goto nla_put_failure;
 dump_ctx->nest = nla_nest_start_noflag(dump_ctx->skb,
            DEVLINK_ATTR_DPIPE_ENTRIES);
 if (!dump_ctx->nest)
  goto nla_put_failure;
 return 0;

nla_put_failure:
 nlmsg_free(dump_ctx->skb);
 return -EMSGSIZE;
}
