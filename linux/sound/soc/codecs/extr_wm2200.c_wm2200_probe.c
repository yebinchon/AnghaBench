
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2200_priv {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 struct wm2200_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm2200_probe(struct snd_soc_component *component)
{
 struct wm2200_priv *wm2200 = snd_soc_component_get_drvdata(component);

 wm2200->component = component;

 return 0;
}
