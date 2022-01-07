
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4118_priv {int dummy; } ;


 int AK4118_REG_FORMAT_CTL_DIF0 ;
 int AK4118_REG_FORMAT_CTL_DIF1 ;
 int AK4118_REG_FORMAT_CTL_DIF2 ;
 int ENOTSUPP ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



__attribute__((used)) static int ak4118_set_dai_fmt_slave(struct ak4118_priv *ak4118,
        unsigned int format)
{
 int dif;

 switch (format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  dif = AK4118_REG_FORMAT_CTL_DIF0 | AK4118_REG_FORMAT_CTL_DIF1 |
        AK4118_REG_FORMAT_CTL_DIF2;
  break;
 case 128:
  dif = AK4118_REG_FORMAT_CTL_DIF1 | AK4118_REG_FORMAT_CTL_DIF2;
  break;
 default:
  return -ENOTSUPP;
 }

 return dif;
}
