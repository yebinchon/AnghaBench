
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sspa_priv {TYPE_1__* sspa; int sysclk; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 int ENODEV ;


 int clk_set_rate (int ,unsigned int) ;
 struct sspa_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mmp_sspa_set_dai_pll(struct snd_soc_dai *cpu_dai, int pll_id,
     int source, unsigned int freq_in,
     unsigned int freq_out)
{
 struct sspa_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);
 int ret = 0;

 switch (pll_id) {
 case 128:
  ret = clk_set_rate(priv->sysclk, freq_out);
  if (ret)
   return ret;
  break;
 case 129:
  ret = clk_set_rate(priv->sspa->clk, freq_out);
  if (ret)
   return ret;
  break;
 default:
  return -ENODEV;
 }

 return 0;
}
