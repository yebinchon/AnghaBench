
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8974_priv {int fs; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int WM8974_ADD ;
 int WM8974_IFACE ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct wm8974_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int wm8974_update_clocks (struct snd_soc_dai*) ;

__attribute__((used)) static int wm8974_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8974_priv *priv = snd_soc_component_get_drvdata(component);
 u16 iface = snd_soc_component_read32(component, WM8974_IFACE) & 0x19f;
 u16 adn = snd_soc_component_read32(component, WM8974_ADD) & 0x1f1;
 int err;

 priv->fs = params_rate(params);
 err = wm8974_update_clocks(dai);
 if (err)
  return err;


 switch (params_width(params)) {
 case 16:
  break;
 case 20:
  iface |= 0x0020;
  break;
 case 24:
  iface |= 0x0040;
  break;
 case 32:
  iface |= 0x0060;
  break;
 }


 switch (params_rate(params)) {
 case 8000:
  adn |= 0x5 << 1;
  break;
 case 11025:
  adn |= 0x4 << 1;
  break;
 case 16000:
  adn |= 0x3 << 1;
  break;
 case 22050:
  adn |= 0x2 << 1;
  break;
 case 32000:
  adn |= 0x1 << 1;
  break;
 case 44100:
 case 48000:
  break;
 }

 snd_soc_component_write(component, WM8974_IFACE, iface);
 snd_soc_component_write(component, WM8974_ADD, adn);
 return 0;
}
