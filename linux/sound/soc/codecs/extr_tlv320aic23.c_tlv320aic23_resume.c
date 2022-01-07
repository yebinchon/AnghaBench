
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct aic23 {int regmap; } ;


 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 struct aic23* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int tlv320aic23_resume(struct snd_soc_component *component)
{
 struct aic23 *aic23 = snd_soc_component_get_drvdata(component);
 regcache_mark_dirty(aic23->regmap);
 regcache_sync(aic23->regmap);

 return 0;
}
