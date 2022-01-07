
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct davinci_mcbsp_dev {int pcr; } ;


 int DAVINCI_MCBSP_PCR_CLKRM ;
 int DAVINCI_MCBSP_PCR_CLKXM ;
 int DAVINCI_MCBSP_PCR_FSRM ;
 int DAVINCI_MCBSP_PCR_FSXM ;
 int DAVINCI_MCBSP_SPCR_GRST ;
 int DAVINCI_MCBSP_SPCR_REG ;
 int DAVINCI_MCBSP_SPCR_RRST ;
 int DAVINCI_MCBSP_SPCR_XRST ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int davinci_mcbsp_read_reg (struct davinci_mcbsp_dev*,int ) ;
 int davinci_mcbsp_stop (struct davinci_mcbsp_dev*,int) ;
 int davinci_mcbsp_write_reg (struct davinci_mcbsp_dev*,int ,int) ;
 struct davinci_mcbsp_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int toggle_clock (struct davinci_mcbsp_dev*,int) ;
 int udelay (int) ;

__attribute__((used)) static int davinci_i2s_prepare(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct davinci_mcbsp_dev *dev = snd_soc_dai_get_drvdata(dai);
 int playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 u32 spcr;
 u32 mask = playback ? DAVINCI_MCBSP_SPCR_XRST : DAVINCI_MCBSP_SPCR_RRST;

 davinci_mcbsp_stop(dev, playback);

 spcr = davinci_mcbsp_read_reg(dev, DAVINCI_MCBSP_SPCR_REG);
 if (spcr & mask) {

  davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_SPCR_REG,
     spcr & ~mask);
  toggle_clock(dev, playback);
 }
 if (dev->pcr & (DAVINCI_MCBSP_PCR_FSXM | DAVINCI_MCBSP_PCR_FSRM |
   DAVINCI_MCBSP_PCR_CLKXM | DAVINCI_MCBSP_PCR_CLKRM)) {

  spcr |= DAVINCI_MCBSP_SPCR_GRST;
  davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_SPCR_REG, spcr);
 }

 if (playback) {

  spcr = davinci_mcbsp_read_reg(dev, DAVINCI_MCBSP_SPCR_REG);
  spcr |= DAVINCI_MCBSP_SPCR_XRST;
  davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_SPCR_REG, spcr);


  udelay(100);


  spcr = davinci_mcbsp_read_reg(dev, DAVINCI_MCBSP_SPCR_REG);
  spcr &= ~DAVINCI_MCBSP_SPCR_XRST;
  davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_SPCR_REG, spcr);
  toggle_clock(dev, playback);
 }

 return 0;
}
