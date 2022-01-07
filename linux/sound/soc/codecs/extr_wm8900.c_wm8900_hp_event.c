
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;






 int WARN (int,char*,int) ;
 int WM8900_REG_HPCTL1 ;
 int WM8900_REG_HPCTL1_HP_CLAMP_IP ;
 int WM8900_REG_HPCTL1_HP_CLAMP_OP ;
 int WM8900_REG_HPCTL1_HP_IPSTAGE_ENA ;
 int WM8900_REG_HPCTL1_HP_OPSTAGE_ENA ;
 int WM8900_REG_HPCTL1_HP_SHORT ;
 int WM8900_REG_HPCTL1_HP_SHORT2 ;
 int msleep (int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm8900_hp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u16 hpctl1 = snd_soc_component_read32(component, WM8900_REG_HPCTL1);

 switch (event) {
 case 128:

  hpctl1 = WM8900_REG_HPCTL1_HP_CLAMP_IP |
   WM8900_REG_HPCTL1_HP_CLAMP_OP;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);
  break;

 case 130:

  hpctl1 &= ~WM8900_REG_HPCTL1_HP_CLAMP_IP;
  hpctl1 |= WM8900_REG_HPCTL1_HP_SHORT |
   WM8900_REG_HPCTL1_HP_SHORT2 |
   WM8900_REG_HPCTL1_HP_IPSTAGE_ENA;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);

  msleep(400);


  hpctl1 &= ~WM8900_REG_HPCTL1_HP_CLAMP_OP;
  hpctl1 |= WM8900_REG_HPCTL1_HP_OPSTAGE_ENA;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);


  hpctl1 &= ~WM8900_REG_HPCTL1_HP_SHORT2;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);
  hpctl1 &= ~WM8900_REG_HPCTL1_HP_SHORT;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);
  break;

 case 129:

  hpctl1 |= WM8900_REG_HPCTL1_HP_SHORT;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);


  hpctl1 &= ~WM8900_REG_HPCTL1_HP_OPSTAGE_ENA;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);


  hpctl1 |= WM8900_REG_HPCTL1_HP_CLAMP_IP |
   WM8900_REG_HPCTL1_HP_CLAMP_OP;
  hpctl1 &= ~WM8900_REG_HPCTL1_HP_IPSTAGE_ENA;
  snd_soc_component_write(component, WM8900_REG_HPCTL1, hpctl1);
  break;

 case 131:

  snd_soc_component_write(component, WM8900_REG_HPCTL1, 0);
  break;

 default:
  WARN(1, "Invalid event %d\n", event);
  break;
 }

 return 0;
}
