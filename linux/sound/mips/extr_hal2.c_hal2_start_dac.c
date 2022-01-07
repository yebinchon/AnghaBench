
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hal2_pbus {int ctrl; TYPE_2__* pbus; } ;
struct TYPE_3__ {int desc_dma; struct hal2_pbus pbus; } ;
struct snd_hal2 {TYPE_1__ dac; } ;
struct TYPE_4__ {int pbdma_ctrl; int pbdma_dptr; } ;


 int H2I_DMA_PORT_EN ;
 int H2I_DMA_PORT_EN_CODECTX ;
 int HPC3_PDMACTRL_ACT ;
 int hal2_i_setbit16 (struct snd_hal2*,int ,int ) ;

__attribute__((used)) static void hal2_start_dac(struct snd_hal2 *hal2)
{
 struct hal2_pbus *pbus = &hal2->dac.pbus;

 pbus->pbus->pbdma_dptr = hal2->dac.desc_dma;
 pbus->pbus->pbdma_ctrl = pbus->ctrl | HPC3_PDMACTRL_ACT;

 hal2_i_setbit16(hal2, H2I_DMA_PORT_EN, H2I_DMA_PORT_EN_CODECTX);
}
