
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta32x_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int STA32X_MMUTE ;
 unsigned int STA32X_MMUTE_MMUTE ;
 int regcache_sync (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct sta32x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sta32x_sync_coef_shadow (struct snd_soc_component*) ;

__attribute__((used)) static int sta32x_cache_sync(struct snd_soc_component *component)
{
 struct sta32x_priv *sta32x = snd_soc_component_get_drvdata(component);
 unsigned int mute;
 int rc;


 regmap_read(sta32x->regmap, STA32X_MMUTE, &mute);
 regmap_write(sta32x->regmap, STA32X_MMUTE, mute | STA32X_MMUTE_MMUTE);
 sta32x_sync_coef_shadow(component);
 rc = regcache_sync(sta32x->regmap);
 regmap_write(sta32x->regmap, STA32X_MMUTE, mute);
 return rc;
}
