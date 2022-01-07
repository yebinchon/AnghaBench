
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mclk; } ;
struct TYPE_4__ {int mclk; } ;
struct sti_sas_data {TYPE_1__ dac; TYPE_2__ spdif; } ;
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;


 int EINVAL ;


 int dev_err (int ,char*) ;
 struct sti_sas_data* dev_get_drvdata (int ) ;

__attribute__((used)) static int sti_sas_prepare(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct sti_sas_data *drvdata = dev_get_drvdata(component->dev);
 struct snd_pcm_runtime *runtime = substream->runtime;

 switch (dai->id) {
 case 128:
  if ((drvdata->spdif.mclk / runtime->rate) != 128) {
   dev_err(component->dev, "unexpected mclk-fs ratio\n");
   return -EINVAL;
  }
  break;
 case 129:
  if ((drvdata->dac.mclk / runtime->rate) != 256) {
   dev_err(component->dev, "unexpected mclk-fs ratio\n");
   return -EINVAL;
  }
  break;
 }

 return 0;
}
