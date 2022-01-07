
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;


 int WARN (int,char*,int) ;
 int WM8962_ANALOGUE_HP_0 ;
 int WM8962_DCS_STARTUP_DONE_HP1L ;
 int WM8962_DCS_STARTUP_DONE_HP1R ;
 int WM8962_DC_SERVO_1 ;
 int WM8962_DC_SERVO_6 ;
 int WM8962_HP1L_DCS_ENA ;
 int WM8962_HP1L_DCS_STARTUP ;
 int WM8962_HP1L_ENA ;
 int WM8962_HP1L_ENA_DLY ;
 int WM8962_HP1L_ENA_OUTP ;
 int WM8962_HP1L_RMV_SHORT ;
 int WM8962_HP1R_DCS_ENA ;
 int WM8962_HP1R_DCS_STARTUP ;
 int WM8962_HP1R_ENA ;
 int WM8962_HP1R_ENA_DLY ;
 int WM8962_HP1R_ENA_OUTP ;
 int WM8962_HP1R_RMV_SHORT ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int msleep (int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int udelay (int) ;

__attribute__((used)) static int hp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 int timeout;
 int reg;
 int expected = (WM8962_DCS_STARTUP_DONE_HP1L |
   WM8962_DCS_STARTUP_DONE_HP1R);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, WM8962_ANALOGUE_HP_0,
        WM8962_HP1L_ENA | WM8962_HP1R_ENA,
        WM8962_HP1L_ENA | WM8962_HP1R_ENA);
  udelay(20);

  snd_soc_component_update_bits(component, WM8962_ANALOGUE_HP_0,
        WM8962_HP1L_ENA_DLY | WM8962_HP1R_ENA_DLY,
        WM8962_HP1L_ENA_DLY | WM8962_HP1R_ENA_DLY);


  snd_soc_component_update_bits(component, WM8962_DC_SERVO_1,
        WM8962_HP1L_DCS_ENA | WM8962_HP1R_DCS_ENA |
        WM8962_HP1L_DCS_STARTUP |
        WM8962_HP1R_DCS_STARTUP,
        WM8962_HP1L_DCS_ENA | WM8962_HP1R_DCS_ENA |
        WM8962_HP1L_DCS_STARTUP |
        WM8962_HP1R_DCS_STARTUP);


  timeout = 0;
  do {
   msleep(1);
   reg = snd_soc_component_read32(component, WM8962_DC_SERVO_6);
   if (reg < 0) {
    dev_err(component->dev,
     "Failed to read DCS status: %d\n",
     reg);
    continue;
   }
   dev_dbg(component->dev, "DCS status: %x\n", reg);
  } while (++timeout < 200 && (reg & expected) != expected);

  if ((reg & expected) != expected)
   dev_err(component->dev, "DC servo timed out\n");
  else
   dev_dbg(component->dev, "DC servo complete after %dms\n",
    timeout);

  snd_soc_component_update_bits(component, WM8962_ANALOGUE_HP_0,
        WM8962_HP1L_ENA_OUTP |
        WM8962_HP1R_ENA_OUTP,
        WM8962_HP1L_ENA_OUTP |
        WM8962_HP1R_ENA_OUTP);
  udelay(20);

  snd_soc_component_update_bits(component, WM8962_ANALOGUE_HP_0,
        WM8962_HP1L_RMV_SHORT |
        WM8962_HP1R_RMV_SHORT,
        WM8962_HP1L_RMV_SHORT |
        WM8962_HP1R_RMV_SHORT);
  break;

 case 128:
  snd_soc_component_update_bits(component, WM8962_ANALOGUE_HP_0,
        WM8962_HP1L_RMV_SHORT |
        WM8962_HP1R_RMV_SHORT, 0);

  udelay(20);

  snd_soc_component_update_bits(component, WM8962_DC_SERVO_1,
        WM8962_HP1L_DCS_ENA | WM8962_HP1R_DCS_ENA |
        WM8962_HP1L_DCS_STARTUP |
        WM8962_HP1R_DCS_STARTUP,
        0);

  snd_soc_component_update_bits(component, WM8962_ANALOGUE_HP_0,
        WM8962_HP1L_ENA | WM8962_HP1R_ENA |
        WM8962_HP1L_ENA_DLY | WM8962_HP1R_ENA_DLY |
        WM8962_HP1L_ENA_OUTP |
        WM8962_HP1R_ENA_OUTP, 0);

  break;

 default:
  WARN(1, "Invalid event %d\n", event);
  return -EINVAL;

 }

 return 0;
}
