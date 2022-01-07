
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_ctx {TYPE_1__* table; } ;
struct TYPE_2__ {scalar_t__ use; struct TYPE_2__* name; int chains_ht; } ;


 scalar_t__ WARN_ON (int) ;
 int kfree (TYPE_1__*) ;
 int rhltable_destroy (int *) ;

__attribute__((used)) static void nf_tables_table_destroy(struct nft_ctx *ctx)
{
 if (WARN_ON(ctx->table->use > 0))
  return;

 rhltable_destroy(&ctx->table->chains_ht);
 kfree(ctx->table->name);
 kfree(ctx->table);
}
