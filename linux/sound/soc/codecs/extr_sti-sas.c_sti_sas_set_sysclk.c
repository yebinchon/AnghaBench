
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int mclk; } ;
struct TYPE_3__ {unsigned int mclk; } ;
struct sti_sas_data {TYPE_2__ dac; TYPE_1__ spdif; } ;
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_OUT ;


 struct sti_sas_data* dev_get_drvdata (int ) ;

__attribute__((used)) static int sti_sas_set_sysclk(struct snd_soc_dai *dai, int clk_id,
         unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct sti_sas_data *drvdata = dev_get_drvdata(component->dev);

 if (dir == SND_SOC_CLOCK_OUT)
  return 0;

 if (clk_id != 0)
  return -EINVAL;

 switch (dai->id) {
 case 128:
  drvdata->spdif.mclk = freq;
  break;

 case 129:
  drvdata->dac.mclk = freq;
  break;
 }

 return 0;
}
