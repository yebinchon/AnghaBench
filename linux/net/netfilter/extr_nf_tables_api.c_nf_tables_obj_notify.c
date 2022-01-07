
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_object {int dummy; } ;
struct nft_ctx {int report; int family; int seq; int portid; int table; int net; } ;


 int GFP_KERNEL ;
 int nft_obj_notify (int ,int ,struct nft_object*,int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static void nf_tables_obj_notify(const struct nft_ctx *ctx,
     struct nft_object *obj, int event)
{
 nft_obj_notify(ctx->net, ctx->table, obj, ctx->portid, ctx->seq, event,
         ctx->family, ctx->report, GFP_KERNEL);
}
