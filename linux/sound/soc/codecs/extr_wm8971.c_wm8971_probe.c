
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8971_priv {int charge_work; } ;
struct snd_soc_component {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int WM8971_LDAC ;
 int WM8971_LINVOL ;
 int WM8971_LOUT1V ;
 int WM8971_LOUT2V ;
 int WM8971_RDAC ;
 int WM8971_RINVOL ;
 int WM8971_ROUT1V ;
 int WM8971_ROUT2V ;
 struct wm8971_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm8971_charge_work ;
 int wm8971_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8971_probe(struct snd_soc_component *component)
{
 struct wm8971_priv *wm8971 = snd_soc_component_get_drvdata(component);

 INIT_DELAYED_WORK(&wm8971->charge_work, wm8971_charge_work);

 wm8971_reset(component);


 snd_soc_component_update_bits(component, WM8971_LDAC, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8971_RDAC, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8971_LOUT1V, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8971_ROUT1V, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8971_LOUT2V, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8971_ROUT2V, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8971_LINVOL, 0x0100, 0x0100);
 snd_soc_component_update_bits(component, WM8971_RINVOL, 0x0100, 0x0100);

 return 0;
}
