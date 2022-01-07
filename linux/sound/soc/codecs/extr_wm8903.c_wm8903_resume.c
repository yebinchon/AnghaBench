
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int regcache_sync (int ) ;
 struct wm8903_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8903_resume(struct snd_soc_component *component)
{
 struct wm8903_priv *wm8903 = snd_soc_component_get_drvdata(component);

 regcache_sync(wm8903->regmap);

 return 0;
}
