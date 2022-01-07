
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8524_priv {int mute; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct wm8524_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void wm8524_shutdown(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8524_priv *wm8524 = snd_soc_component_get_drvdata(component);

 gpiod_set_value_cansleep(wm8524->mute, 0);
}
