
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct TYPE_2__ {int master; int fmt; } ;


 int SACR1_AMSL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 TYPE_1__ pxa_i2s ;

__attribute__((used)) static int pxa2xx_i2s_set_dai_fmt(struct snd_soc_dai *cpu_dai,
  unsigned int fmt)
{

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  pxa_i2s.fmt = 0;
  break;
 case 128:
  pxa_i2s.fmt = SACR1_AMSL;
  break;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 130:
  pxa_i2s.master = 1;
  break;
 case 131:
  pxa_i2s.master = 0;
  break;
 default:
  break;
 }
 return 0;
}
