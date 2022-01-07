
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs42l42_private {struct snd_soc_component* component; } ;


 scalar_t__ snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs42l42_component_probe(struct snd_soc_component *component)
{
 struct cs42l42_private *cs42l42 =
  (struct cs42l42_private *)snd_soc_component_get_drvdata(component);

 cs42l42->component = component;

 return 0;
}
