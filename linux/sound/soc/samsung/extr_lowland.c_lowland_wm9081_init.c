
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int dapm; } ;
struct TYPE_3__ {struct snd_soc_component* component; } ;


 int CLKOUT_RATE ;
 int WM9081_SYSCLK_MCLK ;
 int snd_soc_component_set_sysclk (struct snd_soc_component*,int ,int ,int ,int ) ;
 int snd_soc_dapm_nc_pin (int *,char*) ;

__attribute__((used)) static int lowland_wm9081_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dai->component;

 snd_soc_dapm_nc_pin(&rtd->card->dapm, "LINEOUT");


 return snd_soc_component_set_sysclk(component, WM9081_SYSCLK_MCLK, 0,
     CLKOUT_RATE, 0);
}
