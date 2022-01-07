
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;


 int FSL_FMT_RECEIVER ;
 int FSL_FMT_TRANSMITTER ;
 int SND_SOC_CLOCK_IN ;
 int dev_err (int ,char*,int) ;
 int fsl_sai_set_dai_sysclk_tr (struct snd_soc_dai*,int,unsigned int,int ) ;

__attribute__((used)) static int fsl_sai_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
  int clk_id, unsigned int freq, int dir)
{
 int ret;

 if (dir == SND_SOC_CLOCK_IN)
  return 0;

 ret = fsl_sai_set_dai_sysclk_tr(cpu_dai, clk_id, freq,
     FSL_FMT_TRANSMITTER);
 if (ret) {
  dev_err(cpu_dai->dev, "Cannot set tx sysclk: %d\n", ret);
  return ret;
 }

 ret = fsl_sai_set_dai_sysclk_tr(cpu_dai, clk_id, freq,
     FSL_FMT_RECEIVER);
 if (ret)
  dev_err(cpu_dai->dev, "Cannot set rx sysclk: %d\n", ret);

 return ret;
}
