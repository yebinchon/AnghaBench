
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {TYPE_1__* arizona; int * adsp; } ;
struct cs47l24_priv {TYPE_2__ core; } ;
struct TYPE_3__ {int * dapm; } ;


 struct cs47l24_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm_adsp2_component_remove (int *,struct snd_soc_component*) ;

__attribute__((used)) static void cs47l24_component_remove(struct snd_soc_component *component)
{
 struct cs47l24_priv *priv = snd_soc_component_get_drvdata(component);

 wm_adsp2_component_remove(&priv->core.adsp[1], component);
 wm_adsp2_component_remove(&priv->core.adsp[2], component);

 priv->core.arizona->dapm = ((void*)0);
}
