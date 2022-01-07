
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int AC97_3D_CONTROL ;
 int AC97_GPIO_CFG ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int mioa701_wm9713_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dai->component;


 snd_soc_component_update_bits(component, AC97_GPIO_CFG, 0x100, 0x100);


 snd_soc_component_update_bits(component, AC97_3D_CONTROL, 0xc000, 0xc000);

 return 0;
}
