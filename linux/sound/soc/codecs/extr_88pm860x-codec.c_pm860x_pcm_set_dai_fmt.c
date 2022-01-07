
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pm860x_priv {int dir; } ;


 int EINVAL ;
 unsigned char PCM_EXACT_I2S ;
 unsigned char PCM_INF2_BCLK ;
 unsigned char PCM_INF2_FS ;
 unsigned char PCM_INF2_MASTER ;
 unsigned char PCM_MODE_MASK ;
 int PM860X_CLK_DIR_IN ;
 int PM860X_CLK_DIR_OUT ;
 int PM860X_PCM_IFACE_2 ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 struct pm860x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned char,unsigned char) ;

__attribute__((used)) static int pm860x_pcm_set_dai_fmt(struct snd_soc_dai *codec_dai,
      unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct pm860x_priv *pm860x = snd_soc_component_get_drvdata(component);
 unsigned char inf = 0, mask = 0;
 int ret = -EINVAL;

 mask |= PCM_INF2_BCLK | PCM_INF2_FS | PCM_INF2_MASTER;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
 case 130:
  if (pm860x->dir == PM860X_CLK_DIR_OUT) {
   inf |= PCM_INF2_MASTER;
   ret = 0;
  }
  break;
 case 129:
  if (pm860x->dir == PM860X_CLK_DIR_IN) {
   inf &= ~PCM_INF2_MASTER;
   ret = 0;
  }
  break;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  inf |= PCM_EXACT_I2S;
  ret = 0;
  break;
 }
 mask |= PCM_MODE_MASK;
 if (ret)
  return ret;
 snd_soc_component_update_bits(component, PM860X_PCM_IFACE_2, mask, inf);
 return 0;
}
