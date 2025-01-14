
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int dsp2_ena; } ;
struct snd_soc_component {int dummy; } ;


 int WM8962_DSP2_EXECCONTROL ;
 int WM8962_DSP2_RUNR ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int wm8962_dsp2_set_enable (struct snd_soc_component*,int ) ;
 int wm8962_dsp2_write_config (struct snd_soc_component*) ;

__attribute__((used)) static int wm8962_dsp2_start(struct snd_soc_component *component)
{
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);

 wm8962_dsp2_write_config(component);

 snd_soc_component_write(component, WM8962_DSP2_EXECCONTROL, WM8962_DSP2_RUNR);

 wm8962_dsp2_set_enable(component, wm8962->dsp2_ena);

 return 0;
}
