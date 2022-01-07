
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WM9090_ANALOGUE_HP_0 ;
 int WM9090_CHARGE_PUMP_1 ;
 int WM9090_CP_ENA ;
 unsigned int WM9090_DCS_ENA_CHAN_0 ;
 unsigned int WM9090_DCS_ENA_CHAN_1 ;
 unsigned int WM9090_DCS_TRIG_STARTUP_0 ;
 unsigned int WM9090_DCS_TRIG_STARTUP_1 ;
 int WM9090_DC_SERVO_0 ;
 unsigned int WM9090_HPOUT1L_DLY ;
 int WM9090_HPOUT1L_ENA ;
 unsigned int WM9090_HPOUT1L_OUTP ;
 unsigned int WM9090_HPOUT1L_RMV_SHORT ;
 unsigned int WM9090_HPOUT1R_DLY ;
 int WM9090_HPOUT1R_ENA ;
 unsigned int WM9090_HPOUT1R_OUTP ;
 unsigned int WM9090_HPOUT1R_RMV_SHORT ;
 int WM9090_POWER_MANAGEMENT_1 ;
 int msleep (int) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wait_for_dc_servo (struct snd_soc_component*) ;

__attribute__((used)) static int hp_ev(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int reg = snd_soc_component_read32(component, WM9090_ANALOGUE_HP_0);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, WM9090_CHARGE_PUMP_1,
        WM9090_CP_ENA, WM9090_CP_ENA);

  msleep(5);

  snd_soc_component_update_bits(component, WM9090_POWER_MANAGEMENT_1,
        WM9090_HPOUT1L_ENA | WM9090_HPOUT1R_ENA,
        WM9090_HPOUT1L_ENA | WM9090_HPOUT1R_ENA);

  reg |= WM9090_HPOUT1L_DLY | WM9090_HPOUT1R_DLY;
  snd_soc_component_write(component, WM9090_ANALOGUE_HP_0, reg);







  snd_soc_component_write(component, WM9090_DC_SERVO_0,
         WM9090_DCS_ENA_CHAN_0 |
         WM9090_DCS_ENA_CHAN_1 |
         WM9090_DCS_TRIG_STARTUP_1 |
         WM9090_DCS_TRIG_STARTUP_0);
  wait_for_dc_servo(component);

  reg |= WM9090_HPOUT1R_OUTP | WM9090_HPOUT1R_RMV_SHORT |
   WM9090_HPOUT1L_OUTP | WM9090_HPOUT1L_RMV_SHORT;
  snd_soc_component_write(component, WM9090_ANALOGUE_HP_0, reg);
  break;

 case 128:
  reg &= ~(WM9090_HPOUT1L_RMV_SHORT |
    WM9090_HPOUT1L_DLY |
    WM9090_HPOUT1L_OUTP |
    WM9090_HPOUT1R_RMV_SHORT |
    WM9090_HPOUT1R_DLY |
    WM9090_HPOUT1R_OUTP);

  snd_soc_component_write(component, WM9090_ANALOGUE_HP_0, reg);

  snd_soc_component_write(component, WM9090_DC_SERVO_0, 0);

  snd_soc_component_update_bits(component, WM9090_POWER_MANAGEMENT_1,
        WM9090_HPOUT1L_ENA | WM9090_HPOUT1R_ENA,
        0);

  snd_soc_component_update_bits(component, WM9090_CHARGE_PUMP_1,
        WM9090_CP_ENA, 0);
  break;
 }

 return 0;
}
