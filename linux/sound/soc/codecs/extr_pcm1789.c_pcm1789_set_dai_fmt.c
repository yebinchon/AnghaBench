
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pcm1789_private {unsigned int format; } ;


 struct pcm1789_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm1789_set_dai_fmt(struct snd_soc_dai *codec_dai,
          unsigned int format)
{
 struct snd_soc_component *component = codec_dai->component;
 struct pcm1789_private *priv = snd_soc_component_get_drvdata(component);

 priv->format = format;

 return 0;
}
