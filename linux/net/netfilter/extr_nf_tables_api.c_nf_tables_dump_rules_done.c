
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_rule_dump_ctx {struct nft_rule_dump_ctx* chain; struct nft_rule_dump_ctx* table; } ;
struct netlink_callback {struct nft_rule_dump_ctx* data; } ;


 int kfree (struct nft_rule_dump_ctx*) ;

__attribute__((used)) static int nf_tables_dump_rules_done(struct netlink_callback *cb)
{
 struct nft_rule_dump_ctx *ctx = cb->data;

 if (ctx) {
  kfree(ctx->table);
  kfree(ctx->chain);
  kfree(ctx);
 }
 return 0;
}
