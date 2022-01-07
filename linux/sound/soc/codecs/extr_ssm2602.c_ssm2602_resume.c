
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int regcache_sync (int ) ;
 struct ssm2602_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ssm2602_resume(struct snd_soc_component *component)
{
 struct ssm2602_priv *ssm2602 = snd_soc_component_get_drvdata(component);

 regcache_sync(ssm2602->regmap);

 return 0;
}
