
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3328_codec_priv {int regmap; } ;


 int CODEC_RESET ;
 int mdelay (int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rk3328_codec_reset(struct rk3328_codec_priv *rk3328)
{
 regmap_write(rk3328->regmap, CODEC_RESET, 0x00);
 mdelay(10);
 regmap_write(rk3328->regmap, CODEC_RESET, 0x03);

 return 0;
}
