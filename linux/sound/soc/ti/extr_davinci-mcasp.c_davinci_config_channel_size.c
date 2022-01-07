
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcasp {int slot_width; int max_format_width; int dai_fmt; scalar_t__ op_mode; } ;


 scalar_t__ DAVINCI_MCASP_DIT_MODE ;
 int DAVINCI_MCASP_RXFMT_REG ;
 int DAVINCI_MCASP_RXMASK_REG ;
 int DAVINCI_MCASP_TXFMT_REG ;
 int DAVINCI_MCASP_TXMASK_REG ;
 int RXROT (int) ;
 int RXSSZ (int) ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;
 int SND_SOC_DAIFMT_RIGHT_J ;
 int TXROT (int) ;
 int TXSSZ (int) ;
 int mcasp_mod_bits (struct davinci_mcasp*,int ,int ,int ) ;
 int mcasp_set_reg (struct davinci_mcasp*,int ,int) ;

__attribute__((used)) static int davinci_config_channel_size(struct davinci_mcasp *mcasp,
           int sample_width)
{
 u32 fmt;
 u32 tx_rotate, rx_rotate, slot_width;
 u32 mask = (1ULL << sample_width) - 1;

 if (mcasp->slot_width)
  slot_width = mcasp->slot_width;
 else if (mcasp->max_format_width)
  slot_width = mcasp->max_format_width;
 else
  slot_width = sample_width;
 if ((mcasp->dai_fmt & SND_SOC_DAIFMT_FORMAT_MASK) ==
     SND_SOC_DAIFMT_RIGHT_J) {
  tx_rotate = (slot_width / 4) & 0x7;
  rx_rotate = 0;
 } else {
  tx_rotate = (sample_width / 4) & 0x7;
  rx_rotate = (slot_width - sample_width) / 4;
 }


 fmt = (slot_width >> 1) - 1;

 if (mcasp->op_mode != DAVINCI_MCASP_DIT_MODE) {
  mcasp_mod_bits(mcasp, DAVINCI_MCASP_RXFMT_REG, RXSSZ(fmt),
          RXSSZ(0x0F));
  mcasp_mod_bits(mcasp, DAVINCI_MCASP_TXFMT_REG, TXSSZ(fmt),
          TXSSZ(0x0F));
  mcasp_mod_bits(mcasp, DAVINCI_MCASP_TXFMT_REG, TXROT(tx_rotate),
          TXROT(7));
  mcasp_mod_bits(mcasp, DAVINCI_MCASP_RXFMT_REG, RXROT(rx_rotate),
          RXROT(7));
  mcasp_set_reg(mcasp, DAVINCI_MCASP_RXMASK_REG, mask);
 }

 mcasp_set_reg(mcasp, DAVINCI_MCASP_TXMASK_REG, mask);

 return 0;
}
