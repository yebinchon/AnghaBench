
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8770_priv {int supplies; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int WM8770_DAC1RVOL ;
 int WM8770_DAC2RVOL ;
 int WM8770_DAC3RVOL ;
 int WM8770_DAC4RVOL ;
 int WM8770_DACMUTE ;
 int WM8770_MSALGVOL ;
 int WM8770_MSDIGVOL ;
 int WM8770_VOUT1RVOL ;
 int WM8770_VOUT2RVOL ;
 int WM8770_VOUT3RVOL ;
 int WM8770_VOUT4RVOL ;
 int dev_err (int ,char*,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct wm8770_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm8770_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8770_probe(struct snd_soc_component *component)
{
 struct wm8770_priv *wm8770;
 int ret;

 wm8770 = snd_soc_component_get_drvdata(component);
 wm8770->component = component;

 ret = regulator_bulk_enable(ARRAY_SIZE(wm8770->supplies),
        wm8770->supplies);
 if (ret) {
  dev_err(component->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 ret = wm8770_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset: %d\n", ret);
  goto err_reg_enable;
 }


 snd_soc_component_update_bits(component, WM8770_MSDIGVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_MSALGVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_VOUT1RVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_VOUT2RVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_VOUT3RVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_VOUT4RVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_DAC1RVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_DAC2RVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_DAC3RVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8770_DAC4RVOL, 0x100, 0x100);


 snd_soc_component_update_bits(component, WM8770_DACMUTE, 0x10, 0x10);

err_reg_enable:
 regulator_bulk_disable(ARRAY_SIZE(wm8770->supplies), wm8770->supplies);
 return ret;
}
