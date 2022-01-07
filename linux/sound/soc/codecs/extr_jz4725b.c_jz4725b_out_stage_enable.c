
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct regmap {int dummy; } ;
struct jz_icdc {struct regmap* regmap; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;
 int JZ4725B_CODEC_REG_IFR ;
 int REG_IFR_RAMP_DOWN_DONE_OFFSET ;
 int REG_IFR_RAMP_UP_DONE_OFFSET ;




 int regmap_read_poll_timeout (struct regmap*,int ,unsigned int,unsigned int,int,int) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,int ) ;
 struct jz_icdc* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int jz4725b_out_stage_enable(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol,
        int event)
{
 struct snd_soc_component *codec = snd_soc_dapm_to_component(w->dapm);
 struct jz_icdc *icdc = snd_soc_component_get_drvdata(codec);
 struct regmap *map = icdc->regmap;
 unsigned int val;

 switch (event) {
 case 128:
  return regmap_update_bits(map, JZ4725B_CODEC_REG_IFR,
       BIT(REG_IFR_RAMP_UP_DONE_OFFSET), 0);
 case 130:
  return regmap_read_poll_timeout(map, JZ4725B_CODEC_REG_IFR,
          val, val & BIT(REG_IFR_RAMP_UP_DONE_OFFSET),
          100000, 500000);
 case 129:
  return regmap_update_bits(map, JZ4725B_CODEC_REG_IFR,
    BIT(REG_IFR_RAMP_DOWN_DONE_OFFSET), 0);
 case 131:
  return regmap_read_poll_timeout(map, JZ4725B_CODEC_REG_IFR,
          val, val & BIT(REG_IFR_RAMP_DOWN_DONE_OFFSET),
          100000, 500000);
 default:
  return -EINVAL;
 }
}
