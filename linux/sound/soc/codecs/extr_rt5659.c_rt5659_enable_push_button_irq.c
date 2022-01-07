
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int RT5659_4BTN_IL_CMD_1 ;
 int RT5659_4BTN_IL_CMD_2 ;
 int RT5659_4BTN_IL_DIS ;
 int RT5659_4BTN_IL_EN ;
 int RT5659_4BTN_IL_MASK ;
 int RT5659_IL_IRQ_DIS ;
 int RT5659_IL_IRQ_EN ;
 int RT5659_IL_IRQ_MASK ;
 int RT5659_IRQ_CTRL_2 ;
 int RT5659_PWR_ANLG_2 ;
 int RT5659_PWR_MB1 ;
 int RT5659_PWR_MIC_DET ;
 int RT5659_PWR_VOL ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void rt5659_enable_push_button_irq(struct snd_soc_component *component,
 bool enable)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 if (enable) {
  snd_soc_component_write(component, RT5659_4BTN_IL_CMD_1, 0x000b);


  snd_soc_dapm_force_enable_pin(dapm, "MICBIAS1");
  snd_soc_dapm_force_enable_pin(dapm,
   "Mic Det Power");
  snd_soc_dapm_sync(dapm);

  snd_soc_component_update_bits(component, RT5659_PWR_ANLG_2,
   RT5659_PWR_MB1, RT5659_PWR_MB1);
  snd_soc_component_update_bits(component, RT5659_PWR_VOL,
   RT5659_PWR_MIC_DET, RT5659_PWR_MIC_DET);

  snd_soc_component_update_bits(component, RT5659_IRQ_CTRL_2,
    RT5659_IL_IRQ_MASK, RT5659_IL_IRQ_EN);
  snd_soc_component_update_bits(component, RT5659_4BTN_IL_CMD_2,
    RT5659_4BTN_IL_MASK, RT5659_4BTN_IL_EN);
 } else {
  snd_soc_component_update_bits(component, RT5659_4BTN_IL_CMD_2,
    RT5659_4BTN_IL_MASK, RT5659_4BTN_IL_DIS);
  snd_soc_component_update_bits(component, RT5659_IRQ_CTRL_2,
    RT5659_IL_IRQ_MASK, RT5659_IL_IRQ_DIS);

  snd_soc_dapm_disable_pin(dapm, "MICBIAS1");
  snd_soc_dapm_disable_pin(dapm, "Mic Det Power");
  snd_soc_dapm_sync(dapm);
 }
}
