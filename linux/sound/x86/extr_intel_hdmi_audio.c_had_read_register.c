
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_intelhad {int pipe; int card_ctx; int connected; } ;


 scalar_t__ had_read_register_raw (int ,int ,scalar_t__) ;

__attribute__((used)) static void had_read_register(struct snd_intelhad *ctx, u32 reg, u32 *val)
{
 if (!ctx->connected)
  *val = 0;
 else
  *val = had_read_register_raw(ctx->card_ctx, ctx->pipe, reg);
}
