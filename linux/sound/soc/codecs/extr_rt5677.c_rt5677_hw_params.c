
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt5677_priv {int* lrck; int* bclk; int regmap; int sysclk; } ;


 int EINVAL ;




 int RT5677_CLK_TREE_CTRL1 ;
 int RT5677_I2S1_SDP ;
 int RT5677_I2S2_SDP ;
 int RT5677_I2S3_SDP ;
 int RT5677_I2S4_SDP ;
 unsigned int RT5677_I2S_BCLK_MS3_MASK ;
 int RT5677_I2S_BCLK_MS3_SFT ;
 unsigned int RT5677_I2S_BCLK_MS4_MASK ;
 int RT5677_I2S_BCLK_MS4_SFT ;
 unsigned int RT5677_I2S_DL_20 ;
 unsigned int RT5677_I2S_DL_24 ;
 unsigned int RT5677_I2S_DL_8 ;
 unsigned int RT5677_I2S_DL_MASK ;
 unsigned int RT5677_I2S_PD1_MASK ;
 int RT5677_I2S_PD1_SFT ;
 unsigned int RT5677_I2S_PD2_MASK ;
 int RT5677_I2S_PD2_SFT ;
 unsigned int RT5677_I2S_PD3_MASK ;
 int RT5677_I2S_PD3_SFT ;
 unsigned int RT5677_I2S_PD4_MASK ;
 int RT5677_I2S_PD4_SFT ;
 int dev_dbg (int ,char*,int,int,...) ;
 int dev_err (int ,char*,int,...) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int rl6231_get_clk_info (int ,int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_params_to_frame_size (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int rt5677_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 unsigned int val_len = 0, val_clk, mask_clk;
 int pre_div, bclk_ms, frame_size;

 rt5677->lrck[dai->id] = params_rate(params);
 pre_div = rl6231_get_clk_info(rt5677->sysclk, rt5677->lrck[dai->id]);
 if (pre_div < 0) {
  dev_err(component->dev, "Unsupported clock setting: sysclk=%dHz lrck=%dHz\n",
   rt5677->sysclk, rt5677->lrck[dai->id]);
  return -EINVAL;
 }
 frame_size = snd_soc_params_to_frame_size(params);
 if (frame_size < 0) {
  dev_err(component->dev, "Unsupported frame size: %d\n", frame_size);
  return -EINVAL;
 }
 bclk_ms = frame_size > 32;
 rt5677->bclk[dai->id] = rt5677->lrck[dai->id] * (32 << bclk_ms);

 dev_dbg(dai->dev, "bclk is %dHz and lrck is %dHz\n",
  rt5677->bclk[dai->id], rt5677->lrck[dai->id]);
 dev_dbg(dai->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
    bclk_ms, pre_div, dai->id);

 switch (params_width(params)) {
 case 16:
  break;
 case 20:
  val_len |= RT5677_I2S_DL_20;
  break;
 case 24:
  val_len |= RT5677_I2S_DL_24;
  break;
 case 8:
  val_len |= RT5677_I2S_DL_8;
  break;
 default:
  return -EINVAL;
 }

 switch (dai->id) {
 case 131:
  mask_clk = RT5677_I2S_PD1_MASK;
  val_clk = pre_div << RT5677_I2S_PD1_SFT;
  regmap_update_bits(rt5677->regmap, RT5677_I2S1_SDP,
   RT5677_I2S_DL_MASK, val_len);
  regmap_update_bits(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
   mask_clk, val_clk);
  break;
 case 130:
  mask_clk = RT5677_I2S_PD2_MASK;
  val_clk = pre_div << RT5677_I2S_PD2_SFT;
  regmap_update_bits(rt5677->regmap, RT5677_I2S2_SDP,
   RT5677_I2S_DL_MASK, val_len);
  regmap_update_bits(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
   mask_clk, val_clk);
  break;
 case 129:
  mask_clk = RT5677_I2S_BCLK_MS3_MASK | RT5677_I2S_PD3_MASK;
  val_clk = bclk_ms << RT5677_I2S_BCLK_MS3_SFT |
   pre_div << RT5677_I2S_PD3_SFT;
  regmap_update_bits(rt5677->regmap, RT5677_I2S3_SDP,
   RT5677_I2S_DL_MASK, val_len);
  regmap_update_bits(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
   mask_clk, val_clk);
  break;
 case 128:
  mask_clk = RT5677_I2S_BCLK_MS4_MASK | RT5677_I2S_PD4_MASK;
  val_clk = bclk_ms << RT5677_I2S_BCLK_MS4_SFT |
   pre_div << RT5677_I2S_PD4_SFT;
  regmap_update_bits(rt5677->regmap, RT5677_I2S4_SDP,
   RT5677_I2S_DL_MASK, val_len);
  regmap_update_bits(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
   mask_clk, val_clk);
  break;
 default:
  break;
 }

 return 0;
}
