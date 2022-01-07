
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axi_i2s {int regmap; int clk_ref; } ;


 int AXI_I2S_BITS_PER_FRAME ;
 int AXI_I2S_REG_CLK_CTRL ;
 int DIV_ROUND_UP (int ,unsigned int) ;
 int clk_get_rate (int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct axi_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axi_i2s_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
 struct axi_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 unsigned int bclk_div, word_size;
 unsigned int bclk_rate;

 bclk_rate = params_rate(params) * AXI_I2S_BITS_PER_FRAME;

 word_size = AXI_I2S_BITS_PER_FRAME / 2 - 1;
 bclk_div = DIV_ROUND_UP(clk_get_rate(i2s->clk_ref), bclk_rate) / 2 - 1;

 regmap_write(i2s->regmap, AXI_I2S_REG_CLK_CTRL, (word_size << 16) |
  bclk_div);

 return 0;
}
