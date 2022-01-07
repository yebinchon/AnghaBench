
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5514_priv {int i2c_regmap; } ;


 int regmap_write (int ,int,int) ;

__attribute__((used)) static void rt5514_enable_dsp_prepare(struct rt5514_priv *rt5514)
{

 regmap_write(rt5514->i2c_regmap, 0x18002000, 0x000010ec);

 regmap_write(rt5514->i2c_regmap, 0x18002200, 0x00028604);

 regmap_write(rt5514->i2c_regmap, 0xfafafafa, 0x00000001);

 regmap_write(rt5514->i2c_regmap, 0x18002f00, 0x0005514b);
 regmap_write(rt5514->i2c_regmap, 0x18002f00, 0x00055149);

 regmap_write(rt5514->i2c_regmap, 0xfafafafa, 0x00000000);

 regmap_write(rt5514->i2c_regmap, 0x18002070, 0x00000040);

 regmap_write(rt5514->i2c_regmap, 0x18002240, 0x0000000a);

 regmap_write(rt5514->i2c_regmap, 0x18002100, 0x0000000b);

 regmap_write(rt5514->i2c_regmap, 0x18002004, 0x00808b81);

 regmap_write(rt5514->i2c_regmap, 0x18002f08, 0x00000005);

 regmap_write(rt5514->i2c_regmap, 0x18001114, 0x00000001);

 regmap_write(rt5514->i2c_regmap, 0x18001118, 0x00000001);
}
