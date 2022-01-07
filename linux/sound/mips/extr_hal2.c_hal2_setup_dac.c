
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hal2_pbus {unsigned int ctrl; int pbusnr; TYPE_1__* pbus; } ;
struct TYPE_4__ {int voices; struct hal2_pbus pbus; } ;
struct snd_hal2 {TYPE_2__ dac; } ;
struct TYPE_3__ {unsigned int pbdma_ctrl; } ;


 int H2I_C1_CLKID_SHIFT ;
 int H2I_C1_DATAT_SHIFT ;
 int H2I_C1_DMA_SHIFT ;
 int H2I_DAC_C1 ;
 int H2I_DMA_DRV ;
 int H2I_DMA_END ;
 int H2I_DMA_END_CODECTX ;
 int H2I_DMA_PORT_EN ;
 int H2I_DMA_PORT_EN_CODECTX ;
 unsigned int HPC3_PDMACTRL_LD ;
 unsigned int HPC3_PDMACTRL_RT ;
 int hal2_i_clearbit16 (struct snd_hal2*,int ,int ) ;
 int hal2_i_setbit16 (struct snd_hal2*,int ,int) ;
 int hal2_i_write16 (struct snd_hal2*,int ,int) ;
 int hal2_set_dac_rate (struct snd_hal2*) ;

__attribute__((used)) static void hal2_setup_dac(struct snd_hal2 *hal2)
{
 unsigned int fifobeg, fifoend, highwater, sample_size;
 struct hal2_pbus *pbus = &hal2->dac.pbus;






 sample_size = 2 * hal2->dac.voices;


 highwater = (sample_size * 2) >> 1;
 fifobeg = 0;
 fifoend = (sample_size * 4) >> 3;
 pbus->ctrl = HPC3_PDMACTRL_RT | HPC3_PDMACTRL_LD |
       (highwater << 8) | (fifobeg << 16) | (fifoend << 24);

 pbus->pbus->pbdma_ctrl = HPC3_PDMACTRL_LD;
 hal2_i_clearbit16(hal2, H2I_DMA_PORT_EN, H2I_DMA_PORT_EN_CODECTX);

 hal2_set_dac_rate(hal2);

 hal2_i_clearbit16(hal2, H2I_DMA_END, H2I_DMA_END_CODECTX);

 hal2_i_setbit16(hal2, H2I_DMA_DRV, (1 << pbus->pbusnr));

 hal2_i_write16(hal2, H2I_DAC_C1, (pbus->pbusnr << H2I_C1_DMA_SHIFT)
   | (1 << H2I_C1_CLKID_SHIFT)
   | (hal2->dac.voices << H2I_C1_DATAT_SHIFT));
}
