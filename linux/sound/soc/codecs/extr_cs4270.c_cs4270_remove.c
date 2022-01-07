
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs4270_private {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct cs4270_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void cs4270_remove(struct snd_soc_component *component)
{
 struct cs4270_private *cs4270 = snd_soc_component_get_drvdata(component);

 regulator_bulk_disable(ARRAY_SIZE(cs4270->supplies), cs4270->supplies);
}
