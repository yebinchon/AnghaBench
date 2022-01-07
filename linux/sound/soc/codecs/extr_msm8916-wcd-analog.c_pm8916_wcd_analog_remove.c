
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct pm8916_wcd_analog_priv {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int CDC_D_CDC_RST_CTL ;
 int RST_CTL_DIG_SW_RST_N_MASK ;
 struct pm8916_wcd_analog_priv* dev_get_drvdata (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void pm8916_wcd_analog_remove(struct snd_soc_component *component)
{
 struct pm8916_wcd_analog_priv *priv = dev_get_drvdata(component->dev);

 snd_soc_component_update_bits(component, CDC_D_CDC_RST_CTL,
       RST_CTL_DIG_SW_RST_N_MASK, 0);

 regulator_bulk_disable(ARRAY_SIZE(priv->supplies),
          priv->supplies);
}
