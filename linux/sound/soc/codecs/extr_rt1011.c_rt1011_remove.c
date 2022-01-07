
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt1011_priv {int regmap; int cali_work; } ;


 int cancel_work_sync (int *) ;
 int rt1011_reset (int ) ;
 struct rt1011_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt1011_remove(struct snd_soc_component *component)
{
 struct rt1011_priv *rt1011 = snd_soc_component_get_drvdata(component);

 cancel_work_sync(&rt1011->cali_work);
 rt1011_reset(rt1011->regmap);
}
