
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3328_codec_priv {int regmap; } ;


 int DAC_CHARGE_CURRENT_ALL_MASK ;
 int DAC_CHARGE_CURRENT_ALL_ON ;
 int DAC_CHARGE_DISCHARGE ;
 int DAC_CHARGE_XCHARGE_MASK ;
 int DAC_PRECHARGE_CTRL ;
 int mdelay (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int rk3328_codec_power_off(struct rk3328_codec_priv *rk3328, int wait_ms)
{
 regmap_update_bits(rk3328->regmap, DAC_PRECHARGE_CTRL,
      DAC_CHARGE_XCHARGE_MASK, DAC_CHARGE_DISCHARGE);
 mdelay(10);
 regmap_update_bits(rk3328->regmap, DAC_PRECHARGE_CTRL,
      DAC_CHARGE_CURRENT_ALL_MASK,
      DAC_CHARGE_CURRENT_ALL_ON);
 mdelay(wait_ms);

 return 0;
}
