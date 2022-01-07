
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs43130_private {int regmap; int mclk_int; TYPE_1__* dais; } ;
struct cs43130_clk_gen {int den; int num; } ;
struct TYPE_2__ {int dai_format; int dai_mode; } ;


 int ARRAY_SIZE (int ) ;
 int CS43130_ASP_CH_1_LOC ;
 int CS43130_ASP_CH_1_SZ_EN ;
 int CS43130_ASP_CH_2_LOC ;
 int CS43130_ASP_CH_2_SZ_EN ;
 int CS43130_ASP_CLOCK_CONF ;
 int CS43130_ASP_DEN_1 ;
 int CS43130_ASP_DEN_2 ;

 int CS43130_ASP_FRAME_CONF ;
 int CS43130_ASP_LRCK_HI_TIME_1 ;
 int CS43130_ASP_LRCK_HI_TIME_2 ;
 int CS43130_ASP_LRCK_PERIOD_1 ;
 int CS43130_ASP_LRCK_PERIOD_2 ;
 int CS43130_ASP_NUM_1 ;
 int CS43130_ASP_NUM_2 ;

 int CS43130_CH_EN_MASK ;
 int CS43130_CH_EN_SHIFT ;
 int CS43130_SP_FSD_MASK ;
 int CS43130_SP_LCHI_DATA_MASK ;
 int CS43130_SP_LCHI_LSB_DATA_SHIFT ;
 int CS43130_SP_LCHI_MSB_DATA_SHIFT ;
 int CS43130_SP_LCPOL_IN_MASK ;
 int CS43130_SP_LCPOL_OUT_MASK ;
 int CS43130_SP_LCPOL_OUT_SHIFT ;
 int CS43130_SP_LCPR_DATA_MASK ;
 int CS43130_SP_LCPR_LSB_DATA_SHIFT ;
 int CS43130_SP_LCPR_MSB_DATA_SHIFT ;
 int CS43130_SP_MODE_MASK ;
 int CS43130_SP_MODE_SHIFT ;
 int CS43130_SP_M_LSB_DATA_MASK ;
 int CS43130_SP_M_LSB_DATA_SHIFT ;
 int CS43130_SP_M_MSB_DATA_MASK ;
 int CS43130_SP_M_MSB_DATA_SHIFT ;
 int CS43130_SP_N_LSB_DATA_MASK ;
 int CS43130_SP_N_LSB_DATA_SHIFT ;
 int CS43130_SP_N_MSB_DATA_MASK ;
 int CS43130_SP_N_MSB_DATA_SHIFT ;
 int CS43130_SP_SCPOL_IN_MASK ;
 int CS43130_SP_SCPOL_IN_SHIFT ;
 int CS43130_SP_SCPOL_OUT_MASK ;
 int CS43130_SP_SCPOL_OUT_SHIFT ;
 int CS43130_SP_STP_MASK ;
 int CS43130_SP_STP_SHIFT ;
 int CS43130_XSP_CH_1_LOC ;
 int CS43130_XSP_CH_1_SZ_EN ;
 int CS43130_XSP_CH_2_LOC ;
 int CS43130_XSP_CH_2_SZ_EN ;
 int CS43130_XSP_CLOCK_CONF ;
 int CS43130_XSP_DEN_1 ;
 int CS43130_XSP_DEN_2 ;

 int CS43130_XSP_FRAME_CONF ;
 int CS43130_XSP_LRCK_HI_TIME_1 ;
 int CS43130_XSP_LRCK_HI_TIME_2 ;
 int CS43130_XSP_LRCK_PERIOD_1 ;
 int CS43130_XSP_LRCK_PERIOD_2 ;
 int CS43130_XSP_NUM_1 ;
 int CS43130_XSP_NUM_2 ;
 int EINVAL ;






 int cs43130_16_clk_gen ;
 int cs43130_32_clk_gen ;
 int cs43130_48_clk_gen ;
 int cs43130_64_clk_gen ;
 struct cs43130_clk_gen* cs43130_get_clk_gen (int ,int ,int ,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int cs43130_set_sp_fmt(int dai_id, unsigned int bitwidth_sclk,
         struct snd_pcm_hw_params *params,
         struct cs43130_private *cs43130)
{
 u16 frm_size;
 u16 hi_size;
 u8 frm_delay;
 u8 frm_phase;
 u8 frm_data;
 u8 sclk_edge;
 u8 lrck_edge;
 u8 clk_data;
 u8 loc_ch1;
 u8 loc_ch2;
 u8 dai_mode_val;
 const struct cs43130_clk_gen *clk_gen;

 switch (cs43130->dais[dai_id].dai_format) {
 case 129:
  hi_size = bitwidth_sclk;
  frm_delay = 2;
  frm_phase = 0;
  break;
 case 128:
  hi_size = bitwidth_sclk;
  frm_delay = 2;
  frm_phase = 1;
  break;
 case 131:
  hi_size = 1;
  frm_delay = 2;
  frm_phase = 1;
  break;
 case 130:
  hi_size = 1;
  frm_delay = 0;
  frm_phase = 1;
  break;
 default:
  return -EINVAL;
 }

 switch (cs43130->dais[dai_id].dai_mode) {
 case 132:
  dai_mode_val = 0;
  break;
 case 133:
  dai_mode_val = 1;
  break;
 default:
  return -EINVAL;
 }

 frm_size = bitwidth_sclk * params_channels(params);
 sclk_edge = 1;
 lrck_edge = 0;
 loc_ch1 = 0;
 loc_ch2 = bitwidth_sclk * (params_channels(params) - 1);

 frm_data = frm_delay & CS43130_SP_FSD_MASK;
 frm_data |= (frm_phase << CS43130_SP_STP_SHIFT) & CS43130_SP_STP_MASK;

 clk_data = lrck_edge & CS43130_SP_LCPOL_IN_MASK;
 clk_data |= (lrck_edge << CS43130_SP_LCPOL_OUT_SHIFT) &
      CS43130_SP_LCPOL_OUT_MASK;
 clk_data |= (sclk_edge << CS43130_SP_SCPOL_IN_SHIFT) &
      CS43130_SP_SCPOL_IN_MASK;
 clk_data |= (sclk_edge << CS43130_SP_SCPOL_OUT_SHIFT) &
      CS43130_SP_SCPOL_OUT_MASK;
 clk_data |= (dai_mode_val << CS43130_SP_MODE_SHIFT) &
      CS43130_SP_MODE_MASK;

 switch (dai_id) {
 case 135:
 case 136:
  regmap_update_bits(cs43130->regmap, CS43130_ASP_LRCK_PERIOD_1,
   CS43130_SP_LCPR_DATA_MASK, (frm_size - 1) >>
   CS43130_SP_LCPR_LSB_DATA_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_ASP_LRCK_PERIOD_2,
   CS43130_SP_LCPR_DATA_MASK, (frm_size - 1) >>
   CS43130_SP_LCPR_MSB_DATA_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_ASP_LRCK_HI_TIME_1,
   CS43130_SP_LCHI_DATA_MASK, (hi_size - 1) >>
   CS43130_SP_LCHI_LSB_DATA_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_ASP_LRCK_HI_TIME_2,
   CS43130_SP_LCHI_DATA_MASK, (hi_size - 1) >>
   CS43130_SP_LCHI_MSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_ASP_FRAME_CONF, frm_data);
  regmap_write(cs43130->regmap, CS43130_ASP_CH_1_LOC, loc_ch1);
  regmap_write(cs43130->regmap, CS43130_ASP_CH_2_LOC, loc_ch2);
  regmap_update_bits(cs43130->regmap, CS43130_ASP_CH_1_SZ_EN,
   CS43130_CH_EN_MASK, 1 << CS43130_CH_EN_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_ASP_CH_2_SZ_EN,
   CS43130_CH_EN_MASK, 1 << CS43130_CH_EN_SHIFT);
  regmap_write(cs43130->regmap, CS43130_ASP_CLOCK_CONF, clk_data);
  break;
 case 134:
  regmap_update_bits(cs43130->regmap, CS43130_XSP_LRCK_PERIOD_1,
   CS43130_SP_LCPR_DATA_MASK, (frm_size - 1) >>
   CS43130_SP_LCPR_LSB_DATA_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_XSP_LRCK_PERIOD_2,
   CS43130_SP_LCPR_DATA_MASK, (frm_size - 1) >>
   CS43130_SP_LCPR_MSB_DATA_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_XSP_LRCK_HI_TIME_1,
   CS43130_SP_LCHI_DATA_MASK, (hi_size - 1) >>
   CS43130_SP_LCHI_LSB_DATA_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_XSP_LRCK_HI_TIME_2,
   CS43130_SP_LCHI_DATA_MASK, (hi_size - 1) >>
   CS43130_SP_LCHI_MSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_XSP_FRAME_CONF, frm_data);
  regmap_write(cs43130->regmap, CS43130_XSP_CH_1_LOC, loc_ch1);
  regmap_write(cs43130->regmap, CS43130_XSP_CH_2_LOC, loc_ch2);
  regmap_update_bits(cs43130->regmap, CS43130_XSP_CH_1_SZ_EN,
   CS43130_CH_EN_MASK, 1 << CS43130_CH_EN_SHIFT);
  regmap_update_bits(cs43130->regmap, CS43130_XSP_CH_2_SZ_EN,
   CS43130_CH_EN_MASK, 1 << CS43130_CH_EN_SHIFT);
  regmap_write(cs43130->regmap, CS43130_XSP_CLOCK_CONF, clk_data);
  break;
 default:
  return -EINVAL;
 }

 switch (frm_size) {
 case 16:
  clk_gen = cs43130_get_clk_gen(cs43130->mclk_int,
           params_rate(params),
           cs43130_16_clk_gen,
           ARRAY_SIZE(cs43130_16_clk_gen));
  break;
 case 32:
  clk_gen = cs43130_get_clk_gen(cs43130->mclk_int,
           params_rate(params),
           cs43130_32_clk_gen,
           ARRAY_SIZE(cs43130_32_clk_gen));
  break;
 case 48:
  clk_gen = cs43130_get_clk_gen(cs43130->mclk_int,
           params_rate(params),
           cs43130_48_clk_gen,
           ARRAY_SIZE(cs43130_48_clk_gen));
  break;
 case 64:
  clk_gen = cs43130_get_clk_gen(cs43130->mclk_int,
           params_rate(params),
           cs43130_64_clk_gen,
           ARRAY_SIZE(cs43130_64_clk_gen));
  break;
 default:
  return -EINVAL;
 }

 if (!clk_gen)
  return -EINVAL;

 switch (dai_id) {
 case 135:
 case 136:
  regmap_write(cs43130->regmap, CS43130_ASP_DEN_1,
        (clk_gen->den & CS43130_SP_M_LSB_DATA_MASK) >>
        CS43130_SP_M_LSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_ASP_DEN_2,
        (clk_gen->den & CS43130_SP_M_MSB_DATA_MASK) >>
        CS43130_SP_M_MSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_ASP_NUM_1,
        (clk_gen->num & CS43130_SP_N_LSB_DATA_MASK) >>
        CS43130_SP_N_LSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_ASP_NUM_2,
        (clk_gen->num & CS43130_SP_N_MSB_DATA_MASK) >>
        CS43130_SP_N_MSB_DATA_SHIFT);
  break;
 case 134:
  regmap_write(cs43130->regmap, CS43130_XSP_DEN_1,
        (clk_gen->den & CS43130_SP_M_LSB_DATA_MASK) >>
        CS43130_SP_M_LSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_XSP_DEN_2,
        (clk_gen->den & CS43130_SP_M_MSB_DATA_MASK) >>
        CS43130_SP_M_MSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_XSP_NUM_1,
        (clk_gen->num & CS43130_SP_N_LSB_DATA_MASK) >>
        CS43130_SP_N_LSB_DATA_SHIFT);
  regmap_write(cs43130->regmap, CS43130_XSP_NUM_2,
        (clk_gen->num & CS43130_SP_N_MSB_DATA_MASK) >>
        CS43130_SP_N_MSB_DATA_SHIFT);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
