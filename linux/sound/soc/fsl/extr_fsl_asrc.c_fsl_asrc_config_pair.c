
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_asrc_pair {int index; struct fsl_asrc* asrc_priv; struct asrc_config* config; } ;
struct fsl_asrc {int channel_bits; int regmap; struct clk** asrck_clk; } ;
struct clk {int dummy; } ;
struct asrc_config {int channel_num; scalar_t__ output_word_width; int input_sample_rate; int output_sample_rate; size_t inclk; size_t outclk; int input_word_width; } ;
typedef enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;


 int ARRAY_SIZE (int*) ;
 int ASRCDRi_AICDi_MASK (int) ;
 int ASRCDRi_AICP (int,int) ;
 int ASRCDRi_AICPi_MASK (int) ;
 int ASRCDRi_AOCDi_MASK (int) ;
 int ASRCDRi_AOCP (int,int) ;
 int ASRCDRi_AOCPi_MASK (int) ;
 int ASRCFG_POSTMOD (int,int) ;
 int ASRCFG_POSTMODi_MASK (int) ;
 int ASRCFG_PREMOD (int,int) ;
 int ASRCFG_PREMODi_MASK (int) ;
 int ASRCNCR_ANCi (int,int,int) ;
 int ASRCNCR_ANCi_MASK (int,int) ;
 int ASRCSR_AICS (int,int) ;
 int ASRCSR_AICSi_MASK (int) ;
 int ASRCSR_AOCS (int,int) ;
 int ASRCSR_AOCSi_MASK (int) ;
 int ASRCTR_ATS (int) ;
 int ASRCTR_ATSi_MASK (int) ;
 int ASRCTR_IDR (int) ;
 int ASRCTR_IDRi_MASK (int) ;
 int ASRCTR_USR (int) ;
 int ASRCTR_USRi_MASK (int) ;
 int ASRC_INPUTFIFO_THRESHOLD ;
 scalar_t__ ASRC_WIDTH_8_BIT ;
 int ASRMCR1i_IWD (int ) ;
 int ASRMCR1i_IWD_MASK ;
 int ASRMCR1i_OW16 (scalar_t__) ;
 int ASRMCR1i_OW16_MASK ;
 int ASRMCRi_BUFSTALLi ;
 int ASRMCRi_BUFSTALLi_MASK ;
 int EINVAL ;
 int IDEAL_RATIO_RATE ;
 size_t IN ;
 size_t INCLK_NONE ;
 size_t OUT ;
 int REG_ASRCDR (int) ;
 int REG_ASRCFG ;
 int REG_ASRCNCR ;
 int REG_ASRCSR ;
 int REG_ASRCTR ;
 int REG_ASRMCR (int) ;
 int REG_ASRMCR1 (int) ;
 int clk_get_rate (struct clk*) ;
 int** clk_map ;
 int fsl_asrc_cal_asrck_divisor (struct fsl_asrc_pair*,int) ;
 int fsl_asrc_sel_proc (int,int,int*,int*) ;
 int fsl_asrc_set_ideal_ratio (struct fsl_asrc_pair*,int,int) ;
 int fsl_asrc_set_watermarks (struct fsl_asrc_pair*,int ,int ) ;
 int pair_err (char*,...) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int* supported_asrc_rate ;

__attribute__((used)) static int fsl_asrc_config_pair(struct fsl_asrc_pair *pair)
{
 struct asrc_config *config = pair->config;
 struct fsl_asrc *asrc_priv = pair->asrc_priv;
 enum asrc_pair_index index = pair->index;
 u32 inrate, outrate, indiv, outdiv;
 u32 clk_index[2], div[2];
 int in, out, channels;
 int pre_proc, post_proc;
 struct clk *clk;
 bool ideal;

 if (!config) {
  pair_err("invalid pair config\n");
  return -EINVAL;
 }


 if (config->channel_num < 1 || config->channel_num > 10) {
  pair_err("does not support %d channels\n", config->channel_num);
  return -EINVAL;
 }


 if (config->output_word_width == ASRC_WIDTH_8_BIT) {
  pair_err("does not support 8bit width output\n");
  return -EINVAL;
 }

 inrate = config->input_sample_rate;
 outrate = config->output_sample_rate;
 ideal = config->inclk == INCLK_NONE;


 for (in = 0; in < ARRAY_SIZE(supported_asrc_rate); in++)
  if (inrate == supported_asrc_rate[in])
   break;

 if (in == ARRAY_SIZE(supported_asrc_rate)) {
  pair_err("unsupported input sample rate: %dHz\n", inrate);
  return -EINVAL;
 }

 for (out = 0; out < ARRAY_SIZE(supported_asrc_rate); out++)
  if (outrate == supported_asrc_rate[out])
   break;

 if (out == ARRAY_SIZE(supported_asrc_rate)) {
  pair_err("unsupported output sample rate: %dHz\n", outrate);
  return -EINVAL;
 }

 if ((outrate >= 5512 && outrate <= 30000) &&
     (outrate > 24 * inrate || inrate > 8 * outrate)) {
  pair_err("exceed supported ratio range [1/24, 8] for 				inrate/outrate: %d/%d\n", inrate, outrate);

  return -EINVAL;
 }


 clk_index[IN] = clk_map[IN][config->inclk];
 clk_index[OUT] = clk_map[OUT][config->outclk];


 clk = asrc_priv->asrck_clk[clk_index[ideal ? OUT : IN]];

 div[IN] = clk_get_rate(clk) / inrate;
 if (div[IN] == 0) {
  pair_err("failed to support input sample rate %dHz by asrck_%x\n",
    inrate, clk_index[ideal ? OUT : IN]);
  return -EINVAL;
 }

 clk = asrc_priv->asrck_clk[clk_index[OUT]];


 if (ideal)
  div[OUT] = clk_get_rate(clk) / IDEAL_RATIO_RATE;
 else
  div[OUT] = clk_get_rate(clk) / outrate;

 if (div[OUT] == 0) {
  pair_err("failed to support output sample rate %dHz by asrck_%x\n",
    outrate, clk_index[OUT]);
  return -EINVAL;
 }


 channels = config->channel_num;

 if (asrc_priv->channel_bits < 4)
  channels /= 2;


 regmap_update_bits(asrc_priv->regmap, REG_ASRCNCR,
      ASRCNCR_ANCi_MASK(index, asrc_priv->channel_bits),
      ASRCNCR_ANCi(index, channels, asrc_priv->channel_bits));


 regmap_update_bits(asrc_priv->regmap, REG_ASRCTR,
      ASRCTR_ATSi_MASK(index), ASRCTR_ATS(index));
 regmap_update_bits(asrc_priv->regmap, REG_ASRCTR,
      ASRCTR_USRi_MASK(index), 0);


 regmap_update_bits(asrc_priv->regmap, REG_ASRCSR,
      ASRCSR_AICSi_MASK(index) | ASRCSR_AOCSi_MASK(index),
      ASRCSR_AICS(index, clk_index[IN]) |
      ASRCSR_AOCS(index, clk_index[OUT]));


 indiv = fsl_asrc_cal_asrck_divisor(pair, div[IN]);
 outdiv = fsl_asrc_cal_asrck_divisor(pair, div[OUT]);


 regmap_update_bits(asrc_priv->regmap, REG_ASRCDR(index),
      ASRCDRi_AOCPi_MASK(index) | ASRCDRi_AICPi_MASK(index) |
      ASRCDRi_AOCDi_MASK(index) | ASRCDRi_AICDi_MASK(index),
      ASRCDRi_AOCP(index, outdiv) | ASRCDRi_AICP(index, indiv));


 regmap_update_bits(asrc_priv->regmap, REG_ASRMCR1(index),
      ASRMCR1i_OW16_MASK | ASRMCR1i_IWD_MASK,
      ASRMCR1i_OW16(config->output_word_width) |
      ASRMCR1i_IWD(config->input_word_width));


 regmap_update_bits(asrc_priv->regmap, REG_ASRMCR(index),
      ASRMCRi_BUFSTALLi_MASK, ASRMCRi_BUFSTALLi);


 fsl_asrc_set_watermarks(pair, ASRC_INPUTFIFO_THRESHOLD,
    ASRC_INPUTFIFO_THRESHOLD);


 if (!ideal)
  return 0;


 regmap_update_bits(asrc_priv->regmap, REG_ASRCTR,
      ASRCTR_ATSi_MASK(index), 0);


 regmap_update_bits(asrc_priv->regmap, REG_ASRCTR,
      ASRCTR_IDRi_MASK(index) | ASRCTR_USRi_MASK(index),
      ASRCTR_IDR(index) | ASRCTR_USR(index));

 fsl_asrc_sel_proc(inrate, outrate, &pre_proc, &post_proc);


 regmap_update_bits(asrc_priv->regmap, REG_ASRCFG,
      ASRCFG_PREMODi_MASK(index) | ASRCFG_POSTMODi_MASK(index),
      ASRCFG_PREMOD(index, pre_proc) |
      ASRCFG_POSTMOD(index, post_proc));

 return fsl_asrc_set_ideal_ratio(pair, inrate, outrate);
}
