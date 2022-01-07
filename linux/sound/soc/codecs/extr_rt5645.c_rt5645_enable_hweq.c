
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct rt5645_priv {TYPE_1__* eq_param; int regmap; } ;
struct TYPE_2__ {int val; int reg; } ;


 int RT5645_HWEQ_NUM ;
 int regmap_write (int ,int ,int ) ;
 scalar_t__ rt5645_validate_hweq (int ) ;
 struct rt5645_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5645_enable_hweq(struct snd_soc_component *component)
{
 struct rt5645_priv *rt5645 = snd_soc_component_get_drvdata(component);
 int i;

 for (i = 0; i < RT5645_HWEQ_NUM; i++) {
  if (rt5645_validate_hweq(rt5645->eq_param[i].reg))
   regmap_write(rt5645->regmap, rt5645->eq_param[i].reg,
     rt5645->eq_param[i].val);
  else
   break;
 }

 return 0;
}
