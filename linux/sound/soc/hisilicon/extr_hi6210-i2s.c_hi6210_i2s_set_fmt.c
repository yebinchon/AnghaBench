
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct hi6210_i2s {unsigned int format; int master; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 struct hi6210_i2s* dev_get_drvdata (int ) ;

__attribute__((used)) static int hi6210_i2s_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
 struct hi6210_i2s *i2s = dev_get_drvdata(cpu_dai->dev);





 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
 case 131:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 i2s->format = fmt;
 i2s->master = (i2s->format & SND_SOC_DAIFMT_MASTER_MASK) ==
        131;

 return 0;
}
