
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8904_DAC_DIGITAL_1 ;
 int WM8904_DAC_MUTE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8904_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 int val;

 if (mute)
  val = WM8904_DAC_MUTE;
 else
  val = 0;

 snd_soc_component_update_bits(component, WM8904_DAC_DIGITAL_1, WM8904_DAC_MUTE, val);

 return 0;
}
