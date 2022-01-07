
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8753_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int regcache_sync (int ) ;
 struct wm8753_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8753_resume(struct snd_soc_component *component)
{
 struct wm8753_priv *wm8753 = snd_soc_component_get_drvdata(component);

 regcache_sync(wm8753->regmap);

 return 0;
}
