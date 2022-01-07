
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;


 int FSL_FMT_RECEIVER ;
 int FSL_FMT_TRANSMITTER ;
 int dev_err (int ,char*,int) ;
 int fsl_sai_set_dai_fmt_tr (struct snd_soc_dai*,unsigned int,int ) ;

__attribute__((used)) static int fsl_sai_set_dai_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
 int ret;

 ret = fsl_sai_set_dai_fmt_tr(cpu_dai, fmt, FSL_FMT_TRANSMITTER);
 if (ret) {
  dev_err(cpu_dai->dev, "Cannot set tx format: %d\n", ret);
  return ret;
 }

 ret = fsl_sai_set_dai_fmt_tr(cpu_dai, fmt, FSL_FMT_RECEIVER);
 if (ret)
  dev_err(cpu_dai->dev, "Cannot set rx format: %d\n", ret);

 return ret;
}
