
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct rk_pdm_dev {int regmap; } ;


 int EINVAL ;
 unsigned int PDM_CKP_INVERTED ;
 unsigned int PDM_CKP_MSK ;
 unsigned int PDM_CKP_NORMAL ;
 int PDM_CLK_CTRL ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct rk_pdm_dev* to_info (struct snd_soc_dai*) ;

__attribute__((used)) static int rockchip_pdm_set_fmt(struct snd_soc_dai *cpu_dai,
    unsigned int fmt)
{
 struct rk_pdm_dev *pdm = to_info(cpu_dai);
 unsigned int mask = 0, val = 0;

 mask = PDM_CKP_MSK;
 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  val = PDM_CKP_NORMAL;
  break;
 case 129:
  val = PDM_CKP_INVERTED;
  break;
 default:
  return -EINVAL;
 }

 pm_runtime_get_sync(cpu_dai->dev);
 regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, mask, val);
 pm_runtime_put(cpu_dai->dev);

 return 0;
}
