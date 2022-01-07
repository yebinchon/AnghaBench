
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct max98357a_priv {int sdmode; int sdmode_delay; } ;
 int gpiod_set_value (int ,int) ;
 int mdelay (int ) ;
 struct max98357a_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int max98357a_daiops_trigger(struct snd_pcm_substream *substream,
  int cmd, struct snd_soc_dai *dai)
{
 struct max98357a_priv *max98357a = snd_soc_dai_get_drvdata(dai);

 if (!max98357a->sdmode)
  return 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  mdelay(max98357a->sdmode_delay);
  gpiod_set_value(max98357a->sdmode, 1);
  break;
 case 129:
 case 128:
 case 133:
  gpiod_set_value(max98357a->sdmode, 0);
  break;
 }

 return 0;
}
