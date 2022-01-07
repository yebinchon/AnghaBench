
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rk3328_codec_priv {int regmap; } ;
struct TYPE_3__ {int val; int msk; int reg; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int DAC_CHARGE_CURRENT_ALL_MASK ;
 int DAC_CHARGE_CURRENT_ALL_ON ;
 int DAC_PRECHARGE_CTRL ;
 int HPOUTL_GAIN_CTRL ;
 int HPOUTL_GAIN_MASK ;
 int HPOUTR_GAIN_CTRL ;
 int HPOUTR_GAIN_MASK ;
 int mdelay (int) ;
 TYPE_1__* playback_close_list ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rk3328_analog_output (struct rk3328_codec_priv*,int ) ;
 int rk3328_codec_reset (struct rk3328_codec_priv*) ;

__attribute__((used)) static int rk3328_codec_close_playback(struct rk3328_codec_priv *rk3328)
{
 size_t i;

 rk3328_analog_output(rk3328, 0);

 regmap_update_bits(rk3328->regmap, HPOUTL_GAIN_CTRL,
      HPOUTL_GAIN_MASK, 0);
 regmap_update_bits(rk3328->regmap, HPOUTR_GAIN_CTRL,
      HPOUTR_GAIN_MASK, 0);

 for (i = 0; i < ARRAY_SIZE(playback_close_list); i++) {
  regmap_update_bits(rk3328->regmap,
       playback_close_list[i].reg,
       playback_close_list[i].msk,
       playback_close_list[i].val);
  mdelay(1);
 }


 rk3328_codec_reset(rk3328);

 regmap_update_bits(rk3328->regmap, DAC_PRECHARGE_CTRL,
      DAC_CHARGE_CURRENT_ALL_MASK,
      DAC_CHARGE_CURRENT_ALL_ON);

 return 0;
}
