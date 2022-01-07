
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct davinci_mcasp {scalar_t__ fifo_base; scalar_t__ rxnumevt; int streams; int * irq_request; } ;


 scalar_t__ DAVINCI_MCASP_EVTCTLR_REG ;
 int DAVINCI_MCASP_GBLCTLR_REG ;
 int DAVINCI_MCASP_GBLCTLX_REG ;
 int DAVINCI_MCASP_RXSTAT_REG ;
 int FIFO_ENABLE ;
 scalar_t__ MCASP_RFIFOCTL_OFFSET ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int mcasp_clr_bits (struct davinci_mcasp*,scalar_t__,int ) ;
 scalar_t__ mcasp_is_synchronous (struct davinci_mcasp*) ;
 int mcasp_set_clk_pdir (struct davinci_mcasp*,int) ;
 int mcasp_set_reg (struct davinci_mcasp*,int ,int) ;

__attribute__((used)) static void mcasp_stop_rx(struct davinci_mcasp *mcasp)
{

 mcasp_clr_bits(mcasp, DAVINCI_MCASP_EVTCTLR_REG,
         mcasp->irq_request[SNDRV_PCM_STREAM_CAPTURE]);





 if (mcasp_is_synchronous(mcasp) && !mcasp->streams) {
  mcasp_set_clk_pdir(mcasp, 0);
  mcasp_set_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, 0);
 }

 mcasp_set_reg(mcasp, DAVINCI_MCASP_GBLCTLR_REG, 0);
 mcasp_set_reg(mcasp, DAVINCI_MCASP_RXSTAT_REG, 0xFFFFFFFF);

 if (mcasp->rxnumevt) {
  u32 reg = mcasp->fifo_base + MCASP_RFIFOCTL_OFFSET;

  mcasp_clr_bits(mcasp, reg, FIFO_ENABLE);
 }
}
