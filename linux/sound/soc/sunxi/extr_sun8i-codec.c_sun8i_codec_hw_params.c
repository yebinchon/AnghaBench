
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sun8i_codec {int regmap; } ;
struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SUN8I_AIF1CLK_CTRL ;
 int SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV ;
 int SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK ;
 int SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV ;
 int SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK ;
 int SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16 ;
 int SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK ;
 int SUN8I_SYS_SR_CTRL ;
 int SUN8I_SYS_SR_CTRL_AIF1_FS ;
 int SUN8I_SYS_SR_CTRL_AIF1_FS_MASK ;
 int SUN8I_SYS_SR_CTRL_AIF2_FS ;
 int SUN8I_SYS_SR_CTRL_AIF2_FS_MASK ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_physical_width (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct sun8i_codec* snd_soc_component_get_drvdata (int ) ;
 int sun8i_codec_get_bclk_div (struct sun8i_codec*,int ,int) ;
 int sun8i_codec_get_hw_rate (struct snd_pcm_hw_params*) ;
 int sun8i_codec_get_lrck_div (int ,int ) ;

__attribute__((used)) static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct sun8i_codec *scodec = snd_soc_component_get_drvdata(dai->component);
 int sample_rate, lrck_div;
 u8 bclk_div;





 regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
      SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK,
      SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16);

 bclk_div = sun8i_codec_get_bclk_div(scodec, params_rate(params), 16);
 regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
      SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK,
      bclk_div << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV);

 lrck_div = sun8i_codec_get_lrck_div(params_channels(params),
         params_physical_width(params));
 if (lrck_div < 0)
  return lrck_div;

 regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
      SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK,
      lrck_div << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV);

 sample_rate = sun8i_codec_get_hw_rate(params);
 if (sample_rate < 0)
  return sample_rate;

 regmap_update_bits(scodec->regmap, SUN8I_SYS_SR_CTRL,
      SUN8I_SYS_SR_CTRL_AIF1_FS_MASK,
      sample_rate << SUN8I_SYS_SR_CTRL_AIF1_FS);
 regmap_update_bits(scodec->regmap, SUN8I_SYS_SR_CTRL,
      SUN8I_SYS_SR_CTRL_AIF2_FS_MASK,
      sample_rate << SUN8I_SYS_SR_CTRL_AIF2_FS);

 return 0;
}
