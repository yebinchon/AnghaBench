
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {int dummy; } ;
struct jz4740_i2s {int dummy; } ;


 int EINVAL ;
 int JZ_AIC_CONF_BIT_CLK_MASTER ;
 int JZ_AIC_CONF_SYNC_CLK_MASTER ;
 int JZ_AIC_I2S_FMT_ENABLE_SYS_CLK ;
 int JZ_AIC_I2S_FMT_MSB ;
 int JZ_REG_AIC_CONF ;
 int JZ_REG_AIC_I2S_FMT ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int jz4740_i2s_read (struct jz4740_i2s*,int ) ;
 int jz4740_i2s_write (struct jz4740_i2s*,int ,int) ;
 struct jz4740_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int jz4740_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct jz4740_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 uint32_t format = 0;
 uint32_t conf;

 conf = jz4740_i2s_read(i2s, JZ_REG_AIC_CONF);

 conf &= ~(JZ_AIC_CONF_BIT_CLK_MASTER | JZ_AIC_CONF_SYNC_CLK_MASTER);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  conf |= JZ_AIC_CONF_BIT_CLK_MASTER | JZ_AIC_CONF_SYNC_CLK_MASTER;
  format |= JZ_AIC_I2S_FMT_ENABLE_SYS_CLK;
  break;
 case 133:
  conf |= JZ_AIC_CONF_SYNC_CLK_MASTER;
  break;
 case 132:
  conf |= JZ_AIC_CONF_BIT_CLK_MASTER;
  break;
 case 134:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  format |= JZ_AIC_I2S_FMT_MSB;
  break;
 case 130:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 default:
  return -EINVAL;
 }

 jz4740_i2s_write(i2s, JZ_REG_AIC_CONF, conf);
 jz4740_i2s_write(i2s, JZ_REG_AIC_I2S_FMT, format);

 return 0;
}
