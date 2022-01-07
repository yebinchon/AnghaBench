
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400_priv {int wm8400; } ;
struct snd_soc_component {int dummy; } ;


 struct wm8400_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8400_reset_codec_reg_cache (int ) ;

__attribute__((used)) static void wm8400_component_reset(struct snd_soc_component *component)
{
 struct wm8400_priv *wm8400 = snd_soc_component_get_drvdata(component);

 wm8400_reset_codec_reg_cache(wm8400->wm8400);
}
