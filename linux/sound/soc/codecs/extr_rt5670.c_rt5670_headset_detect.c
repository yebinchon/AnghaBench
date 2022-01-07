
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt5670_priv {int jack_type; } ;


 int RT5670_CBJ_BST1_EN ;
 int RT5670_CBJ_DET_MODE ;
 int RT5670_CBJ_MN_JD ;
 int RT5670_CJ_CTRL1 ;
 int RT5670_CJ_CTRL2 ;
 int RT5670_CJ_CTRL3 ;
 int RT5670_GEN_CTRL3 ;
 int RT5670_GP1_PIN_IRQ ;
 int RT5670_GP1_PIN_MASK ;
 int RT5670_GPIO_CTRL1 ;
 int RT5670_GPIO_CTRL2 ;
 int RT5670_IL_CMD ;
 int RT5670_INT_IRQ_ST ;
 int RT5670_JD_CTRL3 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int msleep (int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int rt5670_headset_detect(struct snd_soc_component *component, int jack_insert)
{
 int val;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);

 if (jack_insert) {
  snd_soc_dapm_force_enable_pin(dapm, "Mic Det Power");
  snd_soc_dapm_sync(dapm);
  snd_soc_component_update_bits(component, RT5670_GEN_CTRL3, 0x4, 0x0);
  snd_soc_component_update_bits(component, RT5670_CJ_CTRL2,
   RT5670_CBJ_DET_MODE | RT5670_CBJ_MN_JD,
   RT5670_CBJ_MN_JD);
  snd_soc_component_write(component, RT5670_GPIO_CTRL2, 0x0004);
  snd_soc_component_update_bits(component, RT5670_GPIO_CTRL1,
   RT5670_GP1_PIN_MASK, RT5670_GP1_PIN_IRQ);
  snd_soc_component_update_bits(component, RT5670_CJ_CTRL1,
   RT5670_CBJ_BST1_EN, RT5670_CBJ_BST1_EN);
  snd_soc_component_write(component, RT5670_JD_CTRL3, 0x00f0);
  snd_soc_component_update_bits(component, RT5670_CJ_CTRL2,
   RT5670_CBJ_MN_JD, RT5670_CBJ_MN_JD);
  snd_soc_component_update_bits(component, RT5670_CJ_CTRL2,
   RT5670_CBJ_MN_JD, 0);
  msleep(300);
  val = snd_soc_component_read32(component, RT5670_CJ_CTRL3) & 0x7;
  if (val == 0x1 || val == 0x2) {
   rt5670->jack_type = SND_JACK_HEADSET;

   snd_soc_component_update_bits(component, RT5670_INT_IRQ_ST, 0x8, 0x8);
   snd_soc_component_update_bits(component, RT5670_IL_CMD, 0x40, 0x40);
   snd_soc_component_read32(component, RT5670_IL_CMD);
  } else {
   snd_soc_component_update_bits(component, RT5670_GEN_CTRL3, 0x4, 0x4);
   rt5670->jack_type = SND_JACK_HEADPHONE;
   snd_soc_dapm_disable_pin(dapm, "Mic Det Power");
   snd_soc_dapm_sync(dapm);
  }
 } else {
  snd_soc_component_update_bits(component, RT5670_INT_IRQ_ST, 0x8, 0x0);
  snd_soc_component_update_bits(component, RT5670_GEN_CTRL3, 0x4, 0x4);
  rt5670->jack_type = 0;
  snd_soc_dapm_disable_pin(dapm, "Mic Det Power");
  snd_soc_dapm_sync(dapm);
 }

 return rt5670->jack_type;
}
