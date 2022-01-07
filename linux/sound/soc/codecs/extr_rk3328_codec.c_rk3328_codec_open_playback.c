
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rk3328_codec_priv {int regmap; int spk_depop_time; } ;
struct TYPE_3__ {int val; int msk; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DAC_CHARGE_CURRENT_ALL_MASK ;
 int DAC_CHARGE_CURRENT_I ;
 int DAC_PRECHARGE_CTRL ;
 int HPOUTL_GAIN_CTRL ;
 int HPOUTL_GAIN_MASK ;
 int HPOUTR_GAIN_CTRL ;
 int HPOUTR_GAIN_MASK ;
 int OUT_VOLUME ;
 int mdelay (int) ;
 int msleep (int ) ;
 TYPE_1__* playback_open_list ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rk3328_analog_output (struct rk3328_codec_priv*,int) ;

__attribute__((used)) static int rk3328_codec_open_playback(struct rk3328_codec_priv *rk3328)
{
 int i;

 regmap_update_bits(rk3328->regmap, DAC_PRECHARGE_CTRL,
      DAC_CHARGE_CURRENT_ALL_MASK,
      DAC_CHARGE_CURRENT_I);

 for (i = 0; i < ARRAY_SIZE(playback_open_list); i++) {
  regmap_update_bits(rk3328->regmap,
       playback_open_list[i].reg,
       playback_open_list[i].msk,
       playback_open_list[i].val);
  mdelay(1);
 }

 msleep(rk3328->spk_depop_time);
 rk3328_analog_output(rk3328, 1);

 regmap_update_bits(rk3328->regmap, HPOUTL_GAIN_CTRL,
      HPOUTL_GAIN_MASK, OUT_VOLUME);
 regmap_update_bits(rk3328->regmap, HPOUTR_GAIN_CTRL,
      HPOUTR_GAIN_MASK, OUT_VOLUME);

 return 0;
}
