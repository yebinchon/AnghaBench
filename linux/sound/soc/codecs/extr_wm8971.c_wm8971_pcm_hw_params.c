
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8971_priv {int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int sr; int usb; } ;


 int WM8971_IFACE ;
 int WM8971_SRATE ;
 TYPE_1__* coeff_div ;
 int get_coeff (int ,int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct wm8971_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8971_pcm_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params,
 struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8971_priv *wm8971 = snd_soc_component_get_drvdata(component);
 u16 iface = snd_soc_component_read32(component, WM8971_IFACE) & 0x1f3;
 u16 srate = snd_soc_component_read32(component, WM8971_SRATE) & 0x1c0;
 int coeff = get_coeff(wm8971->sysclk, params_rate(params));


 switch (params_width(params)) {
 case 16:
  break;
 case 20:
  iface |= 0x0004;
  break;
 case 24:
  iface |= 0x0008;
  break;
 case 32:
  iface |= 0x000c;
  break;
 }


 snd_soc_component_write(component, WM8971_IFACE, iface);
 if (coeff >= 0)
  snd_soc_component_write(component, WM8971_SRATE, srate |
   (coeff_div[coeff].sr << 1) | coeff_div[coeff].usb);

 return 0;
}
