
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcbsp_dev {int pcr; } ;


 int DAVINCI_MCBSP_PCR_CLKRP ;
 int DAVINCI_MCBSP_PCR_CLKXP ;
 int DAVINCI_MCBSP_PCR_REG ;
 int davinci_mcbsp_write_reg (struct davinci_mcbsp_dev*,int ,int) ;

__attribute__((used)) static void toggle_clock(struct davinci_mcbsp_dev *dev, int playback)
{
 u32 m = playback ? DAVINCI_MCBSP_PCR_CLKXP : DAVINCI_MCBSP_PCR_CLKRP;



 davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_PCR_REG, dev->pcr ^ m);
 davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_PCR_REG, dev->pcr);
}
