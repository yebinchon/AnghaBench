
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8731_priv {int playback_fs; int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int sr; int bosr; int usb; } ;


 int WM8731_IFACE ;
 int WM8731_SRATE ;
 TYPE_1__* coeff_div ;
 int get_coeff (int ,int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct wm8731_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int wm8731_set_deemph (struct snd_soc_component*) ;

__attribute__((used)) static int wm8731_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8731_priv *wm8731 = snd_soc_component_get_drvdata(component);
 u16 iface = snd_soc_component_read32(component, WM8731_IFACE) & 0xfff3;
 int i = get_coeff(wm8731->sysclk, params_rate(params));
 u16 srate = (coeff_div[i].sr << 2) |
  (coeff_div[i].bosr << 1) | coeff_div[i].usb;

 wm8731->playback_fs = params_rate(params);

 snd_soc_component_write(component, WM8731_SRATE, srate);


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

 wm8731_set_deemph(component);

 snd_soc_component_write(component, WM8731_IFACE, iface);
 return 0;
}
