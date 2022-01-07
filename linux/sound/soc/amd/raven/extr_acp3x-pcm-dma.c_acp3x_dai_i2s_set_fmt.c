
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct i2s_dev_data {int tdm_mode; } ;


 int EINVAL ;

 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 struct i2s_dev_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int acp3x_dai_i2s_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{

 struct i2s_dev_data *adata = snd_soc_dai_get_drvdata(cpu_dai);

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  adata->tdm_mode = 0;
  break;
 case 129:
  adata->tdm_mode = 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
