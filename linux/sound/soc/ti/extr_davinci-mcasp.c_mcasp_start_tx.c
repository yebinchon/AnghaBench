
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcasp {int fifo_base; int * irq_request; scalar_t__ txnumevt; } ;


 int DAVINCI_MCASP_EVTCTLX_REG ;
 int DAVINCI_MCASP_GBLCTLX_REG ;
 int DAVINCI_MCASP_TXSTAT_REG ;
 int FIFO_ENABLE ;
 int MCASP_WFIFOCTL_OFFSET ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int TXCLKRST ;
 int TXFSRST ;
 int TXHCLKRST ;
 int TXSERCLR ;
 int TXSMRST ;
 int XRDATA ;
 int mcasp_clr_bits (struct davinci_mcasp*,int,int ) ;
 int mcasp_get_reg (struct davinci_mcasp*,int ) ;
 int mcasp_set_axr_pdir (struct davinci_mcasp*,int) ;
 int mcasp_set_bits (struct davinci_mcasp*,int,int ) ;
 int mcasp_set_clk_pdir (struct davinci_mcasp*,int) ;
 int mcasp_set_ctl_reg (struct davinci_mcasp*,int ,int ) ;
 int mcasp_set_reg (struct davinci_mcasp*,int ,int) ;

__attribute__((used)) static void mcasp_start_tx(struct davinci_mcasp *mcasp)
{
 u32 cnt;

 if (mcasp->txnumevt) {
  u32 reg = mcasp->fifo_base + MCASP_WFIFOCTL_OFFSET;

  mcasp_clr_bits(mcasp, reg, FIFO_ENABLE);
  mcasp_set_bits(mcasp, reg, FIFO_ENABLE);
 }


 mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXHCLKRST);
 mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXCLKRST);
 mcasp_set_clk_pdir(mcasp, 1);


 mcasp_set_reg(mcasp, DAVINCI_MCASP_TXSTAT_REG, 0xFFFFFFFF);
 mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXSERCLR);


 cnt = 0;
 while ((mcasp_get_reg(mcasp, DAVINCI_MCASP_TXSTAT_REG) & XRDATA) &&
        (cnt < 100000))
  cnt++;

 mcasp_set_axr_pdir(mcasp, 1);


 mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXSMRST);

 mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXFSRST);


 mcasp_set_bits(mcasp, DAVINCI_MCASP_EVTCTLX_REG,
         mcasp->irq_request[SNDRV_PCM_STREAM_PLAYBACK]);
}
