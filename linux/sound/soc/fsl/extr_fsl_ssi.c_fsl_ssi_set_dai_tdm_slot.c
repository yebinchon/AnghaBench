
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct regmap {int dummy; } ;
struct fsl_ssi {int slot_width; int slots; scalar_t__ i2s_net; struct regmap* regs; } ;


 int EINVAL ;
 int REG_SSI_SCR ;
 int REG_SSI_SRCCR ;
 int REG_SSI_SRMSK ;
 int REG_SSI_STCCR ;
 int REG_SSI_STMSK ;
 int SSI_SCR_SSIEN ;
 int SSI_SxCCR_DC (int) ;
 int SSI_SxCCR_DC_MASK ;
 int dev_err (int ,char*,...) ;
 int regmap_read (struct regmap*,int ,int *) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct fsl_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_ssi_set_dai_tdm_slot(struct snd_soc_dai *dai, u32 tx_mask,
        u32 rx_mask, int slots, int slot_width)
{
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(dai);
 struct regmap *regs = ssi->regs;
 u32 val;


 if (slot_width & 1 || slot_width < 8 || slot_width > 24) {
  dev_err(dai->dev, "invalid slot width: %d\n", slot_width);
  return -EINVAL;
 }


 if (ssi->i2s_net && slots < 2) {
  dev_err(dai->dev, "slot number should be >= 2 in I2S or NET\n");
  return -EINVAL;
 }

 regmap_update_bits(regs, REG_SSI_STCCR,
      SSI_SxCCR_DC_MASK, SSI_SxCCR_DC(slots));
 regmap_update_bits(regs, REG_SSI_SRCCR,
      SSI_SxCCR_DC_MASK, SSI_SxCCR_DC(slots));


 regmap_read(regs, REG_SSI_SCR, &val);

 regmap_update_bits(regs, REG_SSI_SCR, SSI_SCR_SSIEN, SSI_SCR_SSIEN);

 regmap_write(regs, REG_SSI_STMSK, ~tx_mask);
 regmap_write(regs, REG_SSI_SRMSK, ~rx_mask);


 regmap_update_bits(regs, REG_SSI_SCR, SSI_SCR_SSIEN, val);

 ssi->slot_width = slot_width;
 ssi->slots = slots;

 return 0;
}
