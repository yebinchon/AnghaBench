
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpa6130a2_data {scalar_t__ id; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ TPA6140A2 ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct tpa6130a2_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int tpa6130a2_controls ;
 int tpa6140a2_controls ;

__attribute__((used)) static int tpa6130a2_component_probe(struct snd_soc_component *component)
{
 struct tpa6130a2_data *data = snd_soc_component_get_drvdata(component);

 if (data->id == TPA6140A2)
  return snd_soc_add_component_controls(component,
   tpa6140a2_controls, ARRAY_SIZE(tpa6140a2_controls));
 else
  return snd_soc_add_component_controls(component,
   tpa6130a2_controls, ARRAY_SIZE(tpa6130a2_controls));
}
