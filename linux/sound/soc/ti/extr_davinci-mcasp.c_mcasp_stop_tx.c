
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcasp {int fifo_base; scalar_t__ txnumevt; scalar_t__ streams; int * irq_request; } ;


 int DAVINCI_MCASP_EVTCTLX_REG ;
 int DAVINCI_MCASP_GBLCTLX_REG ;
 int DAVINCI_MCASP_TXSTAT_REG ;
 int FIFO_ENABLE ;
 int MCASP_WFIFOCTL_OFFSET ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int TXCLKRST ;
 int TXFSRST ;
 int TXHCLKRST ;
 int mcasp_clr_bits (struct davinci_mcasp*,int,int ) ;
 scalar_t__ mcasp_is_synchronous (struct davinci_mcasp*) ;
 int mcasp_set_axr_pdir (struct davinci_mcasp*,int) ;
 int mcasp_set_clk_pdir (struct davinci_mcasp*,int) ;
 int mcasp_set_reg (struct davinci_mcasp*,int ,int) ;

__attribute__((used)) static void mcasp_stop_tx(struct davinci_mcasp *mcasp)
{
 u32 val = 0;


 mcasp_clr_bits(mcasp, DAVINCI_MCASP_EVTCTLX_REG,
         mcasp->irq_request[SNDRV_PCM_STREAM_PLAYBACK]);





 if (mcasp_is_synchronous(mcasp) && mcasp->streams)
  val = TXHCLKRST | TXCLKRST | TXFSRST;
 else
  mcasp_set_clk_pdir(mcasp, 0);


 mcasp_set_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, val);
 mcasp_set_reg(mcasp, DAVINCI_MCASP_TXSTAT_REG, 0xFFFFFFFF);

 if (mcasp->txnumevt) {
  u32 reg = mcasp->fifo_base + MCASP_WFIFOCTL_OFFSET;

  mcasp_clr_bits(mcasp, reg, FIFO_ENABLE);
 }

 mcasp_set_axr_pdir(mcasp, 0);
}
