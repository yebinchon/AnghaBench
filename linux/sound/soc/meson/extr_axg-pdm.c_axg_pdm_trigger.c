
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_pdm {int map; } ;


 int EINVAL ;






 int axg_pdm_disable (int ) ;
 int axg_pdm_enable (int ) ;
 struct axg_pdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_pdm_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct axg_pdm *priv = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  axg_pdm_enable(priv->map);
  return 0;

 case 129:
 case 128:
 case 133:
  axg_pdm_disable(priv->map);
  return 0;

 default:
  return -EINVAL;
 }
}
