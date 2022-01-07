
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int AC97PCR_CLRFIFO (int) ;
 int AC97PCR_START (int) ;
 int AC97PCR_STOP (int) ;
 int AC97STAT_BUSY (int) ;
 int AC97_PCR (struct au1xpsc_audio_data*) ;
 int AC97_STAT (struct au1xpsc_audio_data*) ;
 int EINVAL ;




 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 struct au1xpsc_audio_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int wmb () ;

__attribute__((used)) static int au1xpsc_ac97_trigger(struct snd_pcm_substream *substream,
    int cmd, struct snd_soc_dai *dai)
{
 struct au1xpsc_audio_data *pscdata = snd_soc_dai_get_drvdata(dai);
 int ret, stype = substream->stream;

 ret = 0;

 switch (cmd) {
 case 130:
 case 131:
  __raw_writel(AC97PCR_CLRFIFO(stype), AC97_PCR(pscdata));
  wmb();
  __raw_writel(AC97PCR_START(stype), AC97_PCR(pscdata));
  wmb();
  break;
 case 129:
 case 128:
  __raw_writel(AC97PCR_STOP(stype), AC97_PCR(pscdata));
  wmb();

  while (__raw_readl(AC97_STAT(pscdata)) & AC97STAT_BUSY(stype))
   asm volatile ("nop");

  __raw_writel(AC97PCR_CLRFIFO(stype), AC97_PCR(pscdata));
  wmb();

  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
