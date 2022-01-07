
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int mic_work; } ;
struct snd_soc_component {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8962_free_beep (struct snd_soc_component*) ;
 int wm8962_free_gpio (struct snd_soc_component*) ;

__attribute__((used)) static void wm8962_remove(struct snd_soc_component *component)
{
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);

 cancel_delayed_work_sync(&wm8962->mic_work);

 wm8962_free_gpio(component);
 wm8962_free_beep(component);
}
