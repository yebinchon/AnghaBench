
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int boost_peak; int i2s_sdinloc; scalar_t__ tdm_rising_edge; scalar_t__ boost_ind; scalar_t__ amp_inv; scalar_t__ digsft_disable; scalar_t__ aif_half_drv; scalar_t__ gain_zc_disable; } ;
struct cs35l34_private {int regmap; TYPE_1__ pdata; } ;


 int CS35L34_ADSP_CLK_CTL ;
 int CS35L34_ADSP_DRIVE ;
 int CS35L34_ADSP_I2S_CTL ;
 int CS35L34_ADSP_TDM_CTL ;
 int CS35L34_AMP_DIGSFT ;
 int CS35L34_AMP_DIG_VOL_CTL ;
 int CS35L34_BST_PEAK_I ;
 int CS35L34_BST_PEAK_MASK ;
 int CS35L34_GAIN_ZC_MASK ;
 int CS35L34_I2S_LOC_MASK ;
 int CS35L34_I2S_LOC_SHIFT ;
 int CS35L34_INV ;
 int CS35L34_MUTE ;
 int CS35L34_OTW_ATTN_MASK ;
 int CS35L34_PROTECT_CTL ;
 int CS35L34_PWRCTL2 ;
 int CS35L34_PWRCTL3 ;
 int cs35l34_boost_inductor (struct cs35l34_private*,scalar_t__) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 struct cs35l34_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l34_probe(struct snd_soc_component *component)
{
 int ret = 0;
 struct cs35l34_private *cs35l34 = snd_soc_component_get_drvdata(component);

 pm_runtime_get_sync(component->dev);


 regmap_update_bits(cs35l34->regmap, CS35L34_PROTECT_CTL,
   CS35L34_OTW_ATTN_MASK, 0x8);




 regmap_write(cs35l34->regmap, CS35L34_PWRCTL2, 0xFD);
 regmap_write(cs35l34->regmap, CS35L34_PWRCTL3, 0x1F);


 regmap_update_bits(cs35l34->regmap, CS35L34_PROTECT_CTL,
    CS35L34_MUTE, CS35L34_MUTE);


 if (cs35l34->pdata.boost_peak)
  regmap_update_bits(cs35l34->regmap, CS35L34_BST_PEAK_I,
    CS35L34_BST_PEAK_MASK,
    cs35l34->pdata.boost_peak);

 if (cs35l34->pdata.gain_zc_disable)
  regmap_update_bits(cs35l34->regmap, CS35L34_PROTECT_CTL,
   CS35L34_GAIN_ZC_MASK, 0);
 else
  regmap_update_bits(cs35l34->regmap, CS35L34_PROTECT_CTL,
   CS35L34_GAIN_ZC_MASK, CS35L34_GAIN_ZC_MASK);

 if (cs35l34->pdata.aif_half_drv)
  regmap_update_bits(cs35l34->regmap, CS35L34_ADSP_CLK_CTL,
   CS35L34_ADSP_DRIVE, 0);

 if (cs35l34->pdata.digsft_disable)
  regmap_update_bits(cs35l34->regmap, CS35L34_AMP_DIG_VOL_CTL,
   CS35L34_AMP_DIGSFT, 0);

 if (cs35l34->pdata.amp_inv)
  regmap_update_bits(cs35l34->regmap, CS35L34_AMP_DIG_VOL_CTL,
   CS35L34_INV, CS35L34_INV);

 if (cs35l34->pdata.boost_ind)
  ret = cs35l34_boost_inductor(cs35l34, cs35l34->pdata.boost_ind);

 if (cs35l34->pdata.i2s_sdinloc)
  regmap_update_bits(cs35l34->regmap, CS35L34_ADSP_I2S_CTL,
   CS35L34_I2S_LOC_MASK,
   cs35l34->pdata.i2s_sdinloc << CS35L34_I2S_LOC_SHIFT);

 if (cs35l34->pdata.tdm_rising_edge)
  regmap_update_bits(cs35l34->regmap, CS35L34_ADSP_TDM_CTL,
   1, 1);

 pm_runtime_put_sync(component->dev);

 return ret;
}
