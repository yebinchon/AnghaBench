
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {int master; } ;
struct snd_soc_dai {int dev; } ;


 int EINVAL ;
 int REG_TIMING_CTRL ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 unsigned long TIMING_DEFAULT_WIDTH ;
 unsigned long TIMING_MASTER_MODE ;
 unsigned long TIMING_MS_MASK ;
 unsigned long TIMING_SYNC_WIDTH_MASK ;
 unsigned long TIMING_WIDTH_SHIFT ;
 int dev_err (int ,char*) ;
 struct zx_tdm_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 unsigned long zx_tdm_readl (struct zx_tdm_info*,int ) ;
 int zx_tdm_writel (struct zx_tdm_info*,int ,unsigned long) ;

__attribute__((used)) static int zx_tdm_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
 struct zx_tdm_info *tdm = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long val;

 val = zx_tdm_readl(tdm, REG_TIMING_CTRL);
 val &= ~(TIMING_SYNC_WIDTH_MASK | TIMING_MS_MASK);
 val |= TIMING_DEFAULT_WIDTH << TIMING_WIDTH_SHIFT;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:
  tdm->master = 1;
  val |= TIMING_MASTER_MODE;
  break;
 case 128:
  tdm->master = 0;
  val &= ~TIMING_MASTER_MODE;
  break;
 default:
  dev_err(cpu_dai->dev, "Unknown master/slave format\n");
  return -EINVAL;
 }


 zx_tdm_writel(tdm, REG_TIMING_CTRL, val);

 return 0;
}
