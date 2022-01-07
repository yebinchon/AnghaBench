
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_intelhad {int pipe; int card_ctx; scalar_t__ connected; } ;


 int had_write_register_raw (int ,int ,int ,int ) ;

__attribute__((used)) static void had_write_register(struct snd_intelhad *ctx, u32 reg, u32 val)
{
 if (ctx->connected)
  had_write_register_raw(ctx->card_ctx, ctx->pipe, reg, val);
}
