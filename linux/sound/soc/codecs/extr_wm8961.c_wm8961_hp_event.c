
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_POST_PMU ;
 int SND_SOC_DAPM_PRE_PMD ;
 int WM8961_ANALOGUE_HP_0 ;
 int WM8961_CHARGE_PUMP_1 ;
 int WM8961_CP_ENA ;
 int WM8961_DCS_ENA_CHAN_HPL ;
 int WM8961_DCS_ENA_CHAN_HPR ;
 int WM8961_DCS_TRIG_STARTUP_HPL ;
 int WM8961_DCS_TRIG_STARTUP_HPR ;
 int WM8961_DC_SERVO_1 ;
 int WM8961_HPL_ENA ;
 int WM8961_HPL_ENA_DLY ;
 int WM8961_HPL_ENA_OUTP ;
 int WM8961_HPL_RMV_SHORT ;
 int WM8961_HPR_ENA ;
 int WM8961_HPR_ENA_DLY ;
 int WM8961_HPR_ENA_OUTP ;
 int WM8961_HPR_RMV_SHORT ;
 int WM8961_LOUT1_PGA ;
 int WM8961_PWR_MGMT_2 ;
 int WM8961_ROUT1_PGA ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;
 int msleep (int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm8961_hp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u16 hp_reg = snd_soc_component_read32(component, WM8961_ANALOGUE_HP_0);
 u16 cp_reg = snd_soc_component_read32(component, WM8961_CHARGE_PUMP_1);
 u16 pwr_reg = snd_soc_component_read32(component, WM8961_PWR_MGMT_2);
 u16 dcs_reg = snd_soc_component_read32(component, WM8961_DC_SERVO_1);
 int timeout = 500;

 if (event & SND_SOC_DAPM_POST_PMU) {

  hp_reg &= ~(WM8961_HPR_RMV_SHORT | WM8961_HPL_RMV_SHORT);
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);


  cp_reg |= WM8961_CP_ENA;
  snd_soc_component_write(component, WM8961_CHARGE_PUMP_1, cp_reg);
  mdelay(5);


  pwr_reg |= WM8961_LOUT1_PGA | WM8961_ROUT1_PGA;
  snd_soc_component_write(component, WM8961_PWR_MGMT_2, pwr_reg);


  hp_reg |= WM8961_HPR_ENA | WM8961_HPL_ENA;
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);


  hp_reg |= WM8961_HPR_ENA_DLY | WM8961_HPL_ENA_DLY;
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);


  dcs_reg |=
   WM8961_DCS_ENA_CHAN_HPR | WM8961_DCS_TRIG_STARTUP_HPR |
   WM8961_DCS_ENA_CHAN_HPL | WM8961_DCS_TRIG_STARTUP_HPL;
  dev_dbg(component->dev, "Enabling DC servo\n");

  snd_soc_component_write(component, WM8961_DC_SERVO_1, dcs_reg);
  do {
   msleep(1);
   dcs_reg = snd_soc_component_read32(component, WM8961_DC_SERVO_1);
  } while (--timeout &&
    dcs_reg & (WM8961_DCS_TRIG_STARTUP_HPR |
    WM8961_DCS_TRIG_STARTUP_HPL));
  if (dcs_reg & (WM8961_DCS_TRIG_STARTUP_HPR |
          WM8961_DCS_TRIG_STARTUP_HPL))
   dev_err(component->dev, "DC servo timed out\n");
  else
   dev_dbg(component->dev, "DC servo startup complete\n");


  hp_reg |= WM8961_HPR_ENA_OUTP | WM8961_HPL_ENA_OUTP;
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);


  hp_reg |= WM8961_HPR_RMV_SHORT | WM8961_HPL_RMV_SHORT;
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);
 }

 if (event & SND_SOC_DAPM_PRE_PMD) {

  hp_reg &= ~(WM8961_HPR_RMV_SHORT | WM8961_HPL_RMV_SHORT);
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);


  hp_reg &= ~(WM8961_HPR_ENA_OUTP | WM8961_HPL_ENA_OUTP);
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);


  dcs_reg &= ~(WM8961_DCS_ENA_CHAN_HPR |
        WM8961_DCS_ENA_CHAN_HPL);
  snd_soc_component_write(component, WM8961_DC_SERVO_1, dcs_reg);


  hp_reg &= ~(WM8961_HPR_ENA_DLY | WM8961_HPR_ENA |
       WM8961_HPL_ENA_DLY | WM8961_HPL_ENA);
  snd_soc_component_write(component, WM8961_ANALOGUE_HP_0, hp_reg);


  pwr_reg &= ~(WM8961_LOUT1_PGA | WM8961_ROUT1_PGA);
  snd_soc_component_write(component, WM8961_PWR_MGMT_2, pwr_reg);


  dev_dbg(component->dev, "Disabling charge pump\n");
  snd_soc_component_write(component, WM8961_CHARGE_PUMP_1,
        cp_reg & ~WM8961_CP_ENA);
 }

 return 0;
}
