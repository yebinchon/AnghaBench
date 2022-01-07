
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas571x_private {unsigned int format; } ;
struct snd_soc_dai {int component; } ;


 struct tas571x_private* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int tas571x_set_dai_fmt(struct snd_soc_dai *dai, unsigned int format)
{
 struct tas571x_private *priv = snd_soc_component_get_drvdata(dai->component);

 priv->format = format;

 return 0;
}
