
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cx2072x_priv {int regmap; struct snd_soc_component* codec; } ;


 int ARRAY_SIZE (int ) ;
 int CX2072X_AFG_POWER_STATE ;
 int CX2072X_DIGITAL_BIOS_TEST2 ;
 int CX2072X_PORTC_PIN_CTRL ;
 int cx2072x_reg_init ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 struct cx2072x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cx2072x_probe(struct snd_soc_component *codec)
{
 struct cx2072x_priv *cx2072x = snd_soc_component_get_drvdata(codec);

 cx2072x->codec = codec;
 pm_runtime_get_sync(codec->dev);
 regmap_write(cx2072x->regmap, CX2072X_AFG_POWER_STATE, 0);

 regmap_multi_reg_write(cx2072x->regmap, cx2072x_reg_init,
          ARRAY_SIZE(cx2072x_reg_init));


 regmap_update_bits(cx2072x->regmap, CX2072X_PORTC_PIN_CTRL,
      0x20, 0x20);

 regmap_update_bits(cx2072x->regmap, CX2072X_DIGITAL_BIOS_TEST2,
      0x84, 0xff);

 regmap_write(cx2072x->regmap, CX2072X_AFG_POWER_STATE, 3);
 pm_runtime_put(codec->dev);

 return 0;
}
