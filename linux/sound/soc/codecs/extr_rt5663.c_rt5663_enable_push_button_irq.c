
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5663_priv {int codec_ver; } ;




 int RT5663_EN_4BTN_INL_DIS ;
 int RT5663_EN_4BTN_INL_EN ;
 int RT5663_EN_4BTN_INL_MASK ;
 int RT5663_EN_IRQ_INLINE_BYP ;
 int RT5663_EN_IRQ_INLINE_MASK ;
 int RT5663_EN_IRQ_INLINE_NOR ;
 int RT5663_IL_CMD_6 ;
 int RT5663_IRQ_2 ;
 int RT5663_IRQ_3 ;
 int RT5663_RESET_4BTN_INL_MASK ;
 int RT5663_RESET_4BTN_INL_NOR ;
 int RT5663_RESET_4BTN_INL_RESET ;
 int RT5663_V2_EN_IRQ_INLINE_BYP ;
 int RT5663_V2_EN_IRQ_INLINE_MASK ;
 int RT5663_V2_EN_IRQ_INLINE_NOR ;
 int dev_err (int ,char*) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void rt5663_enable_push_button_irq(struct snd_soc_component *component,
 bool enable)
{
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);

 if (enable) {
  snd_soc_component_update_bits(component, RT5663_IL_CMD_6,
   RT5663_EN_4BTN_INL_MASK, RT5663_EN_4BTN_INL_EN);

  snd_soc_component_update_bits(component, RT5663_IL_CMD_6,
   RT5663_RESET_4BTN_INL_MASK,
   RT5663_RESET_4BTN_INL_RESET);
  snd_soc_component_update_bits(component, RT5663_IL_CMD_6,
   RT5663_RESET_4BTN_INL_MASK,
   RT5663_RESET_4BTN_INL_NOR);
  switch (rt5663->codec_ver) {
  case 128:
   snd_soc_component_update_bits(component, RT5663_IRQ_3,
    RT5663_V2_EN_IRQ_INLINE_MASK,
    RT5663_V2_EN_IRQ_INLINE_NOR);
   break;
  case 129:
   snd_soc_component_update_bits(component, RT5663_IRQ_2,
    RT5663_EN_IRQ_INLINE_MASK,
    RT5663_EN_IRQ_INLINE_NOR);
   break;
  default:
   dev_err(component->dev, "Unknown CODEC Version\n");
  }
 } else {
  switch (rt5663->codec_ver) {
  case 128:
   snd_soc_component_update_bits(component, RT5663_IRQ_3,
    RT5663_V2_EN_IRQ_INLINE_MASK,
    RT5663_V2_EN_IRQ_INLINE_BYP);
   break;
  case 129:
   snd_soc_component_update_bits(component, RT5663_IRQ_2,
    RT5663_EN_IRQ_INLINE_MASK,
    RT5663_EN_IRQ_INLINE_BYP);
   break;
  default:
   dev_err(component->dev, "Unknown CODEC Version\n");
  }
  snd_soc_component_update_bits(component, RT5663_IL_CMD_6,
   RT5663_EN_4BTN_INL_MASK, RT5663_EN_4BTN_INL_DIS);

  snd_soc_component_update_bits(component, RT5663_IL_CMD_6,
   RT5663_RESET_4BTN_INL_MASK,
   RT5663_RESET_4BTN_INL_RESET);
  snd_soc_component_update_bits(component, RT5663_IL_CMD_6,
   RT5663_RESET_4BTN_INL_MASK,
   RT5663_RESET_4BTN_INL_NOR);
 }
}
