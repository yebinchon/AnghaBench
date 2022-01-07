
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adav80x {int regmap; } ;


 int regcache_sync (int ) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adav80x_resume(struct snd_soc_component *component)
{
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);

 regcache_sync(adav80x->regmap);

 return 0;
}
