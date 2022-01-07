
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct mxs_saif {unsigned int mclk; } ;


 int EINVAL ;

 struct mxs_saif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mxs_saif_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
   int clk_id, unsigned int freq, int dir)
{
 struct mxs_saif *saif = snd_soc_dai_get_drvdata(cpu_dai);

 switch (clk_id) {
 case 128:
  saif->mclk = freq;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
