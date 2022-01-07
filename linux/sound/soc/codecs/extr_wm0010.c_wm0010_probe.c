
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm0010_priv {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 struct wm0010_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm0010_probe(struct snd_soc_component *component)
{
 struct wm0010_priv *wm0010 = snd_soc_component_get_drvdata(component);

 wm0010->component = component;

 return 0;
}
