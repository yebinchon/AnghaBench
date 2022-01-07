
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt1308_priv {int lrck; int bclk; int sysclk; } ;


 int EINVAL ;

 int RT1308_CLK_1 ;
 unsigned int RT1308_DIV_FS_SYS_MASK ;
 int RT1308_DIV_FS_SYS_SFT ;
 unsigned int RT1308_I2S_DL_SEL_16B ;
 unsigned int RT1308_I2S_DL_SEL_20B ;
 unsigned int RT1308_I2S_DL_SEL_24B ;
 unsigned int RT1308_I2S_DL_SEL_8B ;
 unsigned int RT1308_I2S_DL_SEL_MASK ;
 int RT1308_I2S_SET_2 ;
 int dev_dbg (int ,char*,int,int,int) ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int rt1308_get_clk_info (int ,int) ;
 struct rt1308_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 int snd_soc_params_to_frame_size (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int rt1308_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct rt1308_priv *rt1308 = snd_soc_component_get_drvdata(component);
 unsigned int val_len = 0, val_clk, mask_clk;
 int pre_div, bclk_ms, frame_size;

 rt1308->lrck = params_rate(params);
 pre_div = rt1308_get_clk_info(rt1308->sysclk, rt1308->lrck);
 if (pre_div < 0) {
  dev_err(component->dev,
   "Unsupported clock setting %d\n", rt1308->lrck);
  return -EINVAL;
 }

 frame_size = snd_soc_params_to_frame_size(params);
 if (frame_size < 0) {
  dev_err(component->dev, "Unsupported frame size: %d\n",
   frame_size);
  return -EINVAL;
 }

 bclk_ms = frame_size > 32;
 rt1308->bclk = rt1308->lrck * (32 << bclk_ms);

 dev_dbg(component->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
    bclk_ms, pre_div, dai->id);

 dev_dbg(component->dev, "lrck is %dHz and pre_div is %d for iis %d\n",
    rt1308->lrck, pre_div, dai->id);

 switch (params_width(params)) {
 case 16:
  val_len |= RT1308_I2S_DL_SEL_16B;
  break;
 case 20:
  val_len |= RT1308_I2S_DL_SEL_20B;
  break;
 case 24:
  val_len |= RT1308_I2S_DL_SEL_24B;
  break;
 case 8:
  val_len |= RT1308_I2S_DL_SEL_8B;
  break;
 default:
  return -EINVAL;
 }

 switch (dai->id) {
 case 128:
  mask_clk = RT1308_DIV_FS_SYS_MASK;
  val_clk = pre_div << RT1308_DIV_FS_SYS_SFT;
  snd_soc_component_update_bits(component,
   RT1308_I2S_SET_2, RT1308_I2S_DL_SEL_MASK,
   val_len);
  break;
 default:
  dev_err(component->dev, "Invalid dai->id: %d\n", dai->id);
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, RT1308_CLK_1,
  mask_clk, val_clk);

 return 0;
}
