
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct pcm1681_private {scalar_t__ rate; int regmap; scalar_t__ deemph; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int PCM1681_DEEMPH_CONTROL ;
 int PCM1681_DEEMPH_MASK ;
 int PCM1681_DEEMPH_RATE_MASK ;
 scalar_t__* pcm1681_deemph ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct pcm1681_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm1681_set_deemph(struct snd_soc_component *component)
{
 struct pcm1681_private *priv = snd_soc_component_get_drvdata(component);
 int i = 0, val = -1, enable = 0;

 if (priv->deemph) {
  for (i = 0; i < ARRAY_SIZE(pcm1681_deemph); i++) {
   if (pcm1681_deemph[i] == priv->rate) {
    val = i;
    break;
   }
  }
 }

 if (val != -1) {
  regmap_update_bits(priv->regmap, PCM1681_DEEMPH_CONTROL,
       PCM1681_DEEMPH_RATE_MASK, val << 3);
  enable = 1;
 } else {
  enable = 0;
 }


 return regmap_update_bits(priv->regmap, PCM1681_DEEMPH_CONTROL,
     PCM1681_DEEMPH_MASK, enable);
}
