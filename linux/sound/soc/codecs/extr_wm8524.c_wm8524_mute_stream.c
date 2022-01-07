
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8524_priv {scalar_t__ mute; } ;
struct snd_soc_dai {int component; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 struct wm8524_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int wm8524_mute_stream(struct snd_soc_dai *dai, int mute, int stream)
{
 struct wm8524_priv *wm8524 = snd_soc_component_get_drvdata(dai->component);

 if (wm8524->mute)
  gpiod_set_value_cansleep(wm8524->mute, mute);

 return 0;
}
