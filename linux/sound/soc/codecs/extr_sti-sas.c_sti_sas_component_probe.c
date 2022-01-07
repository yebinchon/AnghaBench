
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_sas_data {int dummy; } ;
struct snd_soc_component {int dev; } ;


 struct sti_sas_data* dev_get_drvdata (int ) ;
 int sti_sas_init_sas_registers (struct snd_soc_component*,struct sti_sas_data*) ;

__attribute__((used)) static int sti_sas_component_probe(struct snd_soc_component *component)
{
 struct sti_sas_data *drvdata = dev_get_drvdata(component->dev);
 int ret;

 ret = sti_sas_init_sas_registers(component, drvdata);

 return ret;
}
