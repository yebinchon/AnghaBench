
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int ARIZONA_FLL_SRC_MCLK1 ;
 int WM5110_FLL2 ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_set_pll (struct snd_soc_component*,int ,int ,int ,int ) ;

__attribute__((used)) static int tm2_aif2_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = rtd->codec_dai->component;
 int ret;


 ret = snd_soc_component_set_pll(component, WM5110_FLL2, ARIZONA_FLL_SRC_MCLK1,
        0, 0);
 if (ret < 0)
  dev_err(component->dev, "Failed to stop FLL2: %d\n", ret);

 return ret;
}
