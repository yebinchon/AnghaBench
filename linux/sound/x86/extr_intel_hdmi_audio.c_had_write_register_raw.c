
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_intelhad_card {scalar_t__ mmio_start; } ;


 scalar_t__ had_config_offset (int) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void had_write_register_raw(struct snd_intelhad_card *card_ctx,
       int pipe, u32 reg, u32 val)
{
 iowrite32(val, card_ctx->mmio_start + had_config_offset(pipe) + reg);
}
