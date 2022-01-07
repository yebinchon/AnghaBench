
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8400_DAC_CTRL ;
 int WM8400_DAC_MUTE ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8400_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 u16 val = snd_soc_component_read32(component, WM8400_DAC_CTRL) & ~WM8400_DAC_MUTE;

 if (mute)
  snd_soc_component_write(component, WM8400_DAC_CTRL, val | WM8400_DAC_MUTE);
 else
  snd_soc_component_write(component, WM8400_DAC_CTRL, val);

 return 0;
}
