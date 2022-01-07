
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {scalar_t__ active; } ;
struct snd_pcm_substream {int dummy; } ;
struct jz4740_i2s {int clk_i2s; } ;


 int JZ_AIC_CONF_ENABLE ;
 int JZ_REG_AIC_CONF ;
 int clk_disable_unprepare (int ) ;
 int jz4740_i2s_read (struct jz4740_i2s*,int ) ;
 int jz4740_i2s_write (struct jz4740_i2s*,int ,int ) ;
 struct jz4740_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void jz4740_i2s_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct jz4740_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 uint32_t conf;

 if (dai->active)
  return;

 conf = jz4740_i2s_read(i2s, JZ_REG_AIC_CONF);
 conf &= ~JZ_AIC_CONF_ENABLE;
 jz4740_i2s_write(i2s, JZ_REG_AIC_CONF, conf);

 clk_disable_unprepare(i2s->clk_i2s);
}
