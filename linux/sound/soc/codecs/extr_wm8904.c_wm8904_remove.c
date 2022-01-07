
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int drc_texts; int retune_mobile_texts; } ;
struct snd_soc_component {int dummy; } ;


 int kfree (int ) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void wm8904_remove(struct snd_soc_component *component)
{
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);

 kfree(wm8904->retune_mobile_texts);
 kfree(wm8904->drc_texts);
}
