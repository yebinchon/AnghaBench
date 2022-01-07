
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* arizona; } ;
struct wm8997_priv {TYPE_2__ core; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_3__ {int * dapm; } ;


 struct wm8997_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void wm8997_component_remove(struct snd_soc_component *component)
{
 struct wm8997_priv *priv = snd_soc_component_get_drvdata(component);

 priv->core.arizona->dapm = ((void*)0);
}
