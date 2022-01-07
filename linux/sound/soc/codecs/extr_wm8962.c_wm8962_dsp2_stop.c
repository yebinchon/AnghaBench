
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int WM8962_DSP2_EXECCONTROL ;
 int WM8962_DSP2_STOP ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int wm8962_dsp2_set_enable (struct snd_soc_component*,int ) ;

__attribute__((used)) static int wm8962_dsp2_stop(struct snd_soc_component *component)
{
 wm8962_dsp2_set_enable(component, 0);

 snd_soc_component_write(component, WM8962_DSP2_EXECCONTROL, WM8962_DSP2_STOP);

 return 0;
}
