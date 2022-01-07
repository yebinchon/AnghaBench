
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct cs53l30_private {int mute_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 struct cs53l30_private* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int cs53l30_mute_stream(struct snd_soc_dai *dai, int mute, int stream)
{
 struct cs53l30_private *priv = snd_soc_component_get_drvdata(dai->component);

 gpiod_set_value_cansleep(priv->mute_gpio, mute);

 return 0;
}
