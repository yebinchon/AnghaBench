
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {int chan_num; int fmt; } ;


 int CR_I2S ;
 int CR_PCM ;
 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



__attribute__((used)) static int fsi_set_fmt_dai(struct fsi_priv *fsi, unsigned int fmt)
{
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  fsi->fmt = CR_I2S;
  fsi->chan_num = 2;
  break;
 case 128:
  fsi->fmt = CR_PCM;
  fsi->chan_num = 2;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
