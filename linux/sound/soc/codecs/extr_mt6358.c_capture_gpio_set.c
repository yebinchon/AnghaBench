
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6358_priv {int regmap; } ;


 int MT6358_GPIO_MODE3 ;
 int MT6358_GPIO_MODE3_CLR ;
 int MT6358_GPIO_MODE3_SET ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void capture_gpio_set(struct mt6358_priv *priv)
{

 regmap_update_bits(priv->regmap, MT6358_GPIO_MODE3_CLR,
      0xffff, 0xffff);
 regmap_update_bits(priv->regmap, MT6358_GPIO_MODE3_SET,
      0xffff, 0x0249);
 regmap_update_bits(priv->regmap, MT6358_GPIO_MODE3,
      0xffff, 0x0249);
}
