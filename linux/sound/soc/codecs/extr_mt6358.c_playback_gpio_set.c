
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_GPIO_MODE2 ;
 int MT6358_GPIO_MODE2_CLR ;
 int MT6358_GPIO_MODE2_SET ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void playback_gpio_set(struct mt6358_priv *priv)
{

 regmap_update_bits(priv->regmap, MT6358_GPIO_MODE2_CLR,
      0x01f8, 0x01f8);
 regmap_update_bits(priv->regmap, MT6358_GPIO_MODE2_SET,
      0xffff, 0x0249);
 regmap_update_bits(priv->regmap, MT6358_GPIO_MODE2,
      0xffff, 0x0249);
}
