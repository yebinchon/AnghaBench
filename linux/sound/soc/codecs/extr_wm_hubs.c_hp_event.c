
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WM8993_ANALOGUE_HP_0 ;
 int WM8993_CHARGE_PUMP_1 ;
 unsigned int WM8993_CP_ENA ;
 unsigned int WM8993_DCS_TIMER_PERIOD_01_MASK ;
 int WM8993_DC_SERVO_0 ;
 int WM8993_DC_SERVO_1 ;
 unsigned int WM8993_HPOUT1L_DLY ;
 unsigned int WM8993_HPOUT1L_ENA ;
 unsigned int WM8993_HPOUT1L_OUTP ;
 unsigned int WM8993_HPOUT1L_RMV_SHORT ;
 unsigned int WM8993_HPOUT1R_DLY ;
 unsigned int WM8993_HPOUT1R_ENA ;
 unsigned int WM8993_HPOUT1R_OUTP ;
 unsigned int WM8993_HPOUT1R_RMV_SHORT ;
 int WM8993_POWER_MANAGEMENT_1 ;
 int enable_dc_servo (struct snd_soc_component*) ;
 int msleep (int) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int hp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int reg = snd_soc_component_read32(component, WM8993_ANALOGUE_HP_0);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, WM8993_CHARGE_PUMP_1,
        WM8993_CP_ENA, WM8993_CP_ENA);

  msleep(5);

  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_1,
        WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA,
        WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA);

  reg |= WM8993_HPOUT1L_DLY | WM8993_HPOUT1R_DLY;
  snd_soc_component_write(component, WM8993_ANALOGUE_HP_0, reg);

  snd_soc_component_update_bits(component, WM8993_DC_SERVO_1,
        WM8993_DCS_TIMER_PERIOD_01_MASK, 0);

  enable_dc_servo(component);

  reg |= WM8993_HPOUT1R_OUTP | WM8993_HPOUT1R_RMV_SHORT |
   WM8993_HPOUT1L_OUTP | WM8993_HPOUT1L_RMV_SHORT;
  snd_soc_component_write(component, WM8993_ANALOGUE_HP_0, reg);
  break;

 case 128:
  snd_soc_component_update_bits(component, WM8993_ANALOGUE_HP_0,
        WM8993_HPOUT1L_OUTP |
        WM8993_HPOUT1R_OUTP |
        WM8993_HPOUT1L_RMV_SHORT |
        WM8993_HPOUT1R_RMV_SHORT, 0);

  snd_soc_component_update_bits(component, WM8993_ANALOGUE_HP_0,
        WM8993_HPOUT1L_DLY |
        WM8993_HPOUT1R_DLY, 0);

  snd_soc_component_write(component, WM8993_DC_SERVO_0, 0);

  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_1,
        WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA,
        0);
  break;
 }

 return 0;
}
