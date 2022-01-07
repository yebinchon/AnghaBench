
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {scalar_t__ active; } ;
struct snd_pcm_substream {int dummy; } ;
struct jz4740_i2s {int clk_i2s; } ;


 int JZ_AIC_CONF_ENABLE ;
 int JZ_AIC_CTRL_FLUSH ;
 int JZ_REG_AIC_CONF ;
 int JZ_REG_AIC_CTRL ;
 int clk_prepare_enable (int ) ;
 int jz4740_i2s_read (struct jz4740_i2s*,int ) ;
 int jz4740_i2s_write (struct jz4740_i2s*,int ,int ) ;
 struct jz4740_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int jz4740_i2s_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct jz4740_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 uint32_t conf, ctrl;
 int ret;

 if (dai->active)
  return 0;

 ctrl = jz4740_i2s_read(i2s, JZ_REG_AIC_CTRL);
 ctrl |= JZ_AIC_CTRL_FLUSH;
 jz4740_i2s_write(i2s, JZ_REG_AIC_CTRL, ctrl);

 ret = clk_prepare_enable(i2s->clk_i2s);
 if (ret)
  return ret;

 conf = jz4740_i2s_read(i2s, JZ_REG_AIC_CONF);
 conf |= JZ_AIC_CONF_ENABLE;
 jz4740_i2s_write(i2s, JZ_REG_AIC_CONF, conf);

 return 0;
}
