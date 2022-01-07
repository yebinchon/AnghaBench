
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hp_pol; } ;
struct wm5100_priv {TYPE_1__ pdata; } ;
struct snd_soc_component {int dummy; } ;


 int gpio_free (scalar_t__) ;
 struct wm5100_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void wm5100_remove(struct snd_soc_component *component)
{
 struct wm5100_priv *wm5100 = snd_soc_component_get_drvdata(component);

 if (wm5100->pdata.hp_pol) {
  gpio_free(wm5100->pdata.hp_pol);
 }
}
