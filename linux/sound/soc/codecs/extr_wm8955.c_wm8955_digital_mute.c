
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8955_DACMU ;
 int WM8955_DAC_CONTROL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8955_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 int val;

 if (mute)
  val = WM8955_DACMU;
 else
  val = 0;

 snd_soc_component_update_bits(component, WM8955_DAC_CONTROL, WM8955_DACMU, val);

 return 0;
}
