
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_data {int soc_card; } ;
struct snd_soc_component {int card; int dev; } ;


 struct sst_data* dev_get_drvdata (int ) ;
 int sst_dsp_init_v2_dpcm (struct snd_soc_component*) ;

__attribute__((used)) static int sst_soc_probe(struct snd_soc_component *component)
{
 struct sst_data *drv = dev_get_drvdata(component->dev);

 drv->soc_card = component->card;
 return sst_dsp_init_v2_dpcm(component);
}
