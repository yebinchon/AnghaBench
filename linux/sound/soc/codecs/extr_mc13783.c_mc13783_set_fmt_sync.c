
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int MC13783_AUDIO_CODEC ;
 int MC13783_AUDIO_DAC ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int mc13783_set_fmt (struct snd_soc_dai*,unsigned int,int ) ;

__attribute__((used)) static int mc13783_set_fmt_sync(struct snd_soc_dai *dai, unsigned int fmt)
{
 int ret;

 ret = mc13783_set_fmt(dai, fmt, MC13783_AUDIO_DAC);
 if (ret)
  return ret;





 fmt &= ~SND_SOC_DAIFMT_MASTER_MASK;
 fmt |= SND_SOC_DAIFMT_CBS_CFS;
 ret = mc13783_set_fmt(dai, fmt, MC13783_AUDIO_CODEC);

 return ret;
}
