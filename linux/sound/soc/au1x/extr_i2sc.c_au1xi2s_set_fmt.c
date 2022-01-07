
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct au1xpsc_audio_data {unsigned long cfg; } ;


 unsigned long CFG_FM_I2S ;
 unsigned long CFG_FM_LJ ;
 unsigned long CFG_FM_MASK ;
 unsigned long CFG_FM_RJ ;
 unsigned long CFG_IC ;
 unsigned long CFG_ICK ;
 int EINVAL ;

 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 struct au1xpsc_audio_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int au1xi2s_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
 struct au1xpsc_audio_data *ctx = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long c;
 int ret;

 ret = -EINVAL;
 c = ctx->cfg;

 c &= ~CFG_FM_MASK;
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  c |= CFG_FM_I2S;
  break;
 case 130:
  c |= CFG_FM_RJ;
  break;
 case 131:
  c |= CFG_FM_LJ;
  break;
 default:
  goto out;
 }

 c &= ~(CFG_IC | CFG_ICK);
 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  c |= CFG_IC | CFG_ICK;
  break;
 case 129:
  c |= CFG_IC;
  break;
 case 132:
  c |= CFG_ICK;
  break;
 case 133:
  break;
 default:
  goto out;
 }


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:
  break;
 default:
  goto out;
 }

 ret = 0;
 ctx->cfg = c;
out:
 return ret;
}
