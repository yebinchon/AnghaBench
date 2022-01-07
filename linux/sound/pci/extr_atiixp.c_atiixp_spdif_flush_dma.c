
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {int dummy; } ;


 int ATI_REG_DMA_FIFO_USED ;
 int SPDF_DMA_DT_SIZE ;
 int atiixp_read (struct atiixp*,int ) ;
 int atiixp_spdif_enable_dma (struct atiixp*,int ) ;
 int atiixp_spdif_enable_transfer (struct atiixp*,int) ;
 int udelay (int) ;

__attribute__((used)) static void atiixp_spdif_flush_dma(struct atiixp *chip)
{
 int timeout;


 atiixp_spdif_enable_dma(chip, 0);
 atiixp_spdif_enable_transfer(chip, 1);

 timeout = 100;
 do {
  if (! (atiixp_read(chip, SPDF_DMA_DT_SIZE) & ATI_REG_DMA_FIFO_USED))
   break;
  udelay(1);
 } while (timeout-- > 0);

 atiixp_spdif_enable_transfer(chip, 0);
}
