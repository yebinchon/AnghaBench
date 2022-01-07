
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcbsp_dev {int dummy; } ;


 int DAVINCI_MCBSP_SPCR_FRST ;
 int DAVINCI_MCBSP_SPCR_GRST ;
 int DAVINCI_MCBSP_SPCR_REG ;
 int DAVINCI_MCBSP_SPCR_RRST ;
 int DAVINCI_MCBSP_SPCR_XRST ;
 int davinci_mcbsp_read_reg (struct davinci_mcbsp_dev*,int ) ;
 int davinci_mcbsp_write_reg (struct davinci_mcbsp_dev*,int ,int) ;
 int toggle_clock (struct davinci_mcbsp_dev*,int) ;

__attribute__((used)) static void davinci_mcbsp_stop(struct davinci_mcbsp_dev *dev, int playback)
{
 u32 spcr;


 spcr = davinci_mcbsp_read_reg(dev, DAVINCI_MCBSP_SPCR_REG);
 spcr &= ~(DAVINCI_MCBSP_SPCR_GRST | DAVINCI_MCBSP_SPCR_FRST);
 spcr &= playback ? ~DAVINCI_MCBSP_SPCR_XRST : ~DAVINCI_MCBSP_SPCR_RRST;
 davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_SPCR_REG, spcr);
 toggle_clock(dev, playback);
}
