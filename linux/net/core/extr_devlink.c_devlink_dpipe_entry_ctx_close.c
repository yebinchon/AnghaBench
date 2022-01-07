
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_dump_ctx {int hdr; int skb; int nest; } ;


 int genlmsg_end (int ,int ) ;
 int nla_nest_end (int ,int ) ;

int devlink_dpipe_entry_ctx_close(struct devlink_dpipe_dump_ctx *dump_ctx)
{
 nla_nest_end(dump_ctx->skb, dump_ctx->nest);
 genlmsg_end(dump_ctx->skb, dump_ctx->hdr);
 return 0;
}
