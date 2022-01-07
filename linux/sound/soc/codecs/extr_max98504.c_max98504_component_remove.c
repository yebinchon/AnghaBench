
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max98504_priv {int supplies; } ;


 int MAX98504_NUM_SUPPLIES ;
 int regulator_bulk_disable (int ,int ) ;
 struct max98504_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void max98504_component_remove(struct snd_soc_component *c)
{
 struct max98504_priv *max98504 = snd_soc_component_get_drvdata(c);

 regulator_bulk_disable(MAX98504_NUM_SUPPLIES, max98504->supplies);
}
