
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_intelhad_card {scalar_t__ mmio_start; } ;


 scalar_t__ had_config_offset (int) ;
 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static u32 had_read_register_raw(struct snd_intelhad_card *card_ctx,
     int pipe, u32 reg)
{
 return ioread32(card_ctx->mmio_start + had_config_offset(pipe) + reg);
}
