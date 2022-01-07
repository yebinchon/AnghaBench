
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int WM8990_AIF_WL_20BITS ;
 int WM8990_AIF_WL_24BITS ;
 int WM8990_AIF_WL_32BITS ;
 int WM8990_AIF_WL_MASK ;
 int WM8990_AUDIO_INTERFACE_1 ;
 int params_width (struct snd_pcm_hw_params*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8990_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 u16 audio1 = snd_soc_component_read32(component, WM8990_AUDIO_INTERFACE_1);

 audio1 &= ~WM8990_AIF_WL_MASK;

 switch (params_width(params)) {
 case 16:
  break;
 case 20:
  audio1 |= WM8990_AIF_WL_20BITS;
  break;
 case 24:
  audio1 |= WM8990_AIF_WL_24BITS;
  break;
 case 32:
  audio1 |= WM8990_AIF_WL_32BITS;
  break;
 }

 snd_soc_component_write(component, WM8990_AUDIO_INTERFACE_1, audio1);
 return 0;
}
