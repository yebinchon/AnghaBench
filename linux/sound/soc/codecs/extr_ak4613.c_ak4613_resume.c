
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct regmap {int dummy; } ;


 struct regmap* dev_get_regmap (int ,int *) ;
 int regcache_cache_only (struct regmap*,int) ;
 int regcache_sync (struct regmap*) ;

__attribute__((used)) static int ak4613_resume(struct snd_soc_component *component)
{
 struct regmap *regmap = dev_get_regmap(component->dev, ((void*)0));

 regcache_cache_only(regmap, 0);
 return regcache_sync(regmap);
}
