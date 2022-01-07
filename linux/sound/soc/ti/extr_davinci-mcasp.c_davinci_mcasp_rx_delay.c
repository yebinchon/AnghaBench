
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcasp {scalar_t__ fifo_base; int rxnumevt; } ;


 scalar_t__ MCASP_RFIFOSTS_OFFSET ;
 int mcasp_get_reg (struct davinci_mcasp*,scalar_t__) ;

__attribute__((used)) static inline u32 davinci_mcasp_rx_delay(struct davinci_mcasp *mcasp)
{
 if (!mcasp->rxnumevt)
  return 0;

 return mcasp_get_reg(mcasp, mcasp->fifo_base + MCASP_RFIFOSTS_OFFSET);
}
