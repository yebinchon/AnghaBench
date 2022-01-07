
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta350_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int STA350_CFUD ;
 int STA350_MMUTE ;
 unsigned int STA350_MMUTE_MMUTE ;
 int regcache_sync (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct sta350_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sta350_sync_coef_shadow (struct snd_soc_component*) ;

__attribute__((used)) static int sta350_cache_sync(struct snd_soc_component *component)
{
 struct sta350_priv *sta350 = snd_soc_component_get_drvdata(component);
 unsigned int mute;
 int rc;


 regmap_read(sta350->regmap, STA350_CFUD, &mute);
 regmap_write(sta350->regmap, STA350_MMUTE, mute | STA350_MMUTE_MMUTE);
 sta350_sync_coef_shadow(component);
 rc = regcache_sync(sta350->regmap);
 regmap_write(sta350->regmap, STA350_MMUTE, mute);
 return rc;
}
