
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {int dummy; } ;


 unsigned int ATI_REG_CMD_OUT_DMA_EN ;
 int CMD ;
 int atiixp_out_flush_dma (struct atiixp*) ;
 unsigned int atiixp_read (struct atiixp*,int ) ;
 int atiixp_write (struct atiixp*,int ,unsigned int) ;

__attribute__((used)) static void atiixp_out_enable_dma(struct atiixp *chip, int on)
{
 unsigned int data;
 data = atiixp_read(chip, CMD);
 if (on) {
  if (data & ATI_REG_CMD_OUT_DMA_EN)
   return;
  atiixp_out_flush_dma(chip);
  data |= ATI_REG_CMD_OUT_DMA_EN;
 } else
  data &= ~ATI_REG_CMD_OUT_DMA_EN;
 atiixp_write(chip, CMD, data);
}
