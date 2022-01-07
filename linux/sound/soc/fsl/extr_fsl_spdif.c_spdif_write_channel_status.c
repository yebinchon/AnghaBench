
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_mixer_control {int * ch_status; } ;
struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct fsl_spdif_priv {struct platform_device* pdev; struct regmap* regmap; struct spdif_mixer_control fsl_spdif_control; } ;


 int REG_SPDIF_STCSCH ;
 int REG_SPDIF_STCSCL ;
 int bitrev8 (int ) ;
 int dev_dbg (int *,char*,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void spdif_write_channel_status(struct fsl_spdif_priv *spdif_priv)
{
 struct spdif_mixer_control *ctrl = &spdif_priv->fsl_spdif_control;
 struct regmap *regmap = spdif_priv->regmap;
 struct platform_device *pdev = spdif_priv->pdev;
 u32 ch_status;

 ch_status = (bitrev8(ctrl->ch_status[0]) << 16) |
      (bitrev8(ctrl->ch_status[1]) << 8) |
      bitrev8(ctrl->ch_status[2]);
 regmap_write(regmap, REG_SPDIF_STCSCH, ch_status);

 dev_dbg(&pdev->dev, "STCSCH: 0x%06x\n", ch_status);

 ch_status = bitrev8(ctrl->ch_status[3]) << 16;
 regmap_write(regmap, REG_SPDIF_STCSCL, ch_status);

 dev_dbg(&pdev->dev, "STCSCL: 0x%06x\n", ch_status);
}
