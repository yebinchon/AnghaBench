
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_data {int * soc_card; } ;
struct snd_soc_component {int dev; } ;


 struct sst_data* dev_get_drvdata (int ) ;

__attribute__((used)) static void sst_soc_remove(struct snd_soc_component *component)
{
 struct sst_data *drv = dev_get_drvdata(component->dev);

 drv->soc_card = ((void*)0);
}
