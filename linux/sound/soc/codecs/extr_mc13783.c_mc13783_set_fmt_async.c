
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {scalar_t__ id; } ;


 int MC13783_AUDIO_CODEC ;
 int MC13783_AUDIO_DAC ;
 scalar_t__ MC13783_ID_STEREO_DAC ;
 int mc13783_set_fmt (struct snd_soc_dai*,unsigned int,int ) ;

__attribute__((used)) static int mc13783_set_fmt_async(struct snd_soc_dai *dai, unsigned int fmt)
{
 if (dai->id == MC13783_ID_STEREO_DAC)
  return mc13783_set_fmt(dai, fmt, MC13783_AUDIO_DAC);
 else
  return mc13783_set_fmt(dai, fmt, MC13783_AUDIO_CODEC);
}
