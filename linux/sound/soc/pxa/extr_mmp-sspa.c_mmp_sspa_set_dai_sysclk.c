
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sspa_priv {int audio_clk; } ;
struct snd_soc_dai {int dummy; } ;


 int EINVAL ;



 int clk_set_rate (int ,unsigned int) ;
 struct sspa_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mmp_sspa_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
        int clk_id, unsigned int freq, int dir)
{
 struct sspa_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);
 int ret = 0;

 switch (clk_id) {
 case 130:
  ret = clk_set_rate(priv->audio_clk, freq);
  if (ret)
   return ret;
  break;
 case 129:
 case 128:

  return -EINVAL;
 default:
  return -EINVAL;
 }

 return 0;
}
