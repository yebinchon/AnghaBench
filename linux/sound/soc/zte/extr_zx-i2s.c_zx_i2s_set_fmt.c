
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_i2s_info {int master; scalar_t__ reg_base; } ;
struct snd_soc_dai {int dev; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 unsigned long ZX_I2S_TIMING_ALIGN_MASK ;
 scalar_t__ ZX_I2S_TIMING_CTRL ;
 unsigned long ZX_I2S_TIMING_I2S ;
 unsigned long ZX_I2S_TIMING_LSB_JUSTIF ;
 unsigned long ZX_I2S_TIMING_MAST ;
 unsigned long ZX_I2S_TIMING_MSB_JUSTIF ;
 unsigned long ZX_I2S_TIMING_MS_MASK ;
 unsigned long ZX_I2S_TIMING_SLAVE ;
 unsigned long ZX_I2S_TIMING_STD_I2S ;
 unsigned long ZX_I2S_TIMING_SYNC_MASK ;
 unsigned long ZX_I2S_TIMING_TEAK_MASK ;
 unsigned long ZX_I2S_TIMING_TIMING_MASK ;
 int dev_err (int ,char*) ;
 unsigned long readl_relaxed (scalar_t__) ;
 struct zx_i2s_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static int zx_i2s_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
 struct zx_i2s_info *i2s = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long val;

 val = readl_relaxed(i2s->reg_base + ZX_I2S_TIMING_CTRL);
 val &= ~(ZX_I2S_TIMING_TIMING_MASK | ZX_I2S_TIMING_ALIGN_MASK |
   ZX_I2S_TIMING_TEAK_MASK | ZX_I2S_TIMING_SYNC_MASK |
   ZX_I2S_TIMING_MS_MASK);

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  val |= (ZX_I2S_TIMING_I2S | ZX_I2S_TIMING_STD_I2S);
  break;
 case 129:
  val |= (ZX_I2S_TIMING_I2S | ZX_I2S_TIMING_MSB_JUSTIF);
  break;
 case 128:
  val |= (ZX_I2S_TIMING_I2S | ZX_I2S_TIMING_LSB_JUSTIF);
  break;
 default:
  dev_err(cpu_dai->dev, "Unknown i2s timing\n");
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:

  i2s->master = 0;
  val |= ZX_I2S_TIMING_SLAVE;
  break;
 case 131:

  i2s->master = 1;
  val |= ZX_I2S_TIMING_MAST;
  break;
 default:
  dev_err(cpu_dai->dev, "Unknown master/slave format\n");
  return -EINVAL;
 }

 writel_relaxed(val, i2s->reg_base + ZX_I2S_TIMING_CTRL);
 return 0;
}
