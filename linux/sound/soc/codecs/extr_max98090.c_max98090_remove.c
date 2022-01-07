
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max98090_priv {int * component; int pll_work; int pll_det_disable_work; int pll_det_enable_work; int jack_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void max98090_remove(struct snd_soc_component *component)
{
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);

 cancel_delayed_work_sync(&max98090->jack_work);
 cancel_delayed_work_sync(&max98090->pll_det_enable_work);
 cancel_work_sync(&max98090->pll_det_disable_work);
 cancel_work_sync(&max98090->pll_work);
 max98090->component = ((void*)0);
}
