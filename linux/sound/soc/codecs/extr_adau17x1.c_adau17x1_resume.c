
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct adau {int regmap; int (* switch_mode ) (int ) ;} ;


 int regcache_sync (int ) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int stub1 (int ) ;

int adau17x1_resume(struct snd_soc_component *component)
{
 struct adau *adau = snd_soc_component_get_drvdata(component);

 if (adau->switch_mode)
  adau->switch_mode(component->dev);

 regcache_sync(adau->regmap);

 return 0;
}
