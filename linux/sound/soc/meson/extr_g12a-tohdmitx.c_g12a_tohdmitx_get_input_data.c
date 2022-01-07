
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dai* priv; } ;
struct snd_soc_dai {struct g12a_tohdmitx_input* playback_dma_data; } ;
struct g12a_tohdmitx_input {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 struct snd_soc_dapm_widget* g12a_tohdmitx_get_input (struct snd_soc_dapm_widget*) ;

__attribute__((used)) static struct g12a_tohdmitx_input *
g12a_tohdmitx_get_input_data(struct snd_soc_dapm_widget *w)
{
 struct snd_soc_dapm_widget *in =
  g12a_tohdmitx_get_input(w);
 struct snd_soc_dai *dai;

 if (WARN_ON(!in))
  return ((void*)0);

 dai = in->priv;

 return dai->playback_dma_data;
}
