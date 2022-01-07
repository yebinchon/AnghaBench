
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct davinci_mcbsp_dev {int pcr; } ;


 int DAVINCI_MCBSP_PCR_FSRM ;
 int DAVINCI_MCBSP_PCR_FSXM ;
 int DAVINCI_MCBSP_SPCR_FRST ;
 int DAVINCI_MCBSP_SPCR_REG ;
 int DAVINCI_MCBSP_SPCR_RRST ;
 int DAVINCI_MCBSP_SPCR_XRST ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int davinci_mcbsp_read_reg (struct davinci_mcbsp_dev*,int ) ;
 int davinci_mcbsp_write_reg (struct davinci_mcbsp_dev*,int ,int ) ;

__attribute__((used)) static void davinci_mcbsp_start(struct davinci_mcbsp_dev *dev,
  struct snd_pcm_substream *substream)
{
 int playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 u32 spcr;
 u32 mask = playback ? DAVINCI_MCBSP_SPCR_XRST : DAVINCI_MCBSP_SPCR_RRST;


 spcr = davinci_mcbsp_read_reg(dev, DAVINCI_MCBSP_SPCR_REG);
 spcr |= mask;

 if (dev->pcr & (DAVINCI_MCBSP_PCR_FSXM | DAVINCI_MCBSP_PCR_FSRM)) {

  spcr |= DAVINCI_MCBSP_SPCR_FRST;
 }
 davinci_mcbsp_write_reg(dev, DAVINCI_MCBSP_SPCR_REG, spcr);
}
