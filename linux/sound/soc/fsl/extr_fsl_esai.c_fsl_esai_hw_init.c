
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_esai {int regmap; struct platform_device* pdev; } ;


 int ESAI_ECR_ERST ;
 int ESAI_ECR_ERST_MASK ;
 int ESAI_ECR_ESAIEN ;
 int ESAI_ECR_ESAIEN_MASK ;
 int ESAI_PCRC_PC_MASK ;
 int ESAI_PRRC_PDC_MASK ;
 int REG_ESAI_ECR ;
 int REG_ESAI_PCRC ;
 int REG_ESAI_PRRC ;
 int dev_err (int *,char*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int fsl_esai_hw_init(struct fsl_esai *esai_priv)
{
 struct platform_device *pdev = esai_priv->pdev;
 int ret;


 ret = regmap_update_bits(esai_priv->regmap, REG_ESAI_ECR,
     ESAI_ECR_ESAIEN_MASK | ESAI_ECR_ERST_MASK,
     ESAI_ECR_ESAIEN | ESAI_ECR_ERST);
 if (ret) {
  dev_err(&pdev->dev, "failed to reset ESAI: %d\n", ret);
  return ret;
 }





 ret = regmap_update_bits(esai_priv->regmap, REG_ESAI_ECR,
     ESAI_ECR_ESAIEN_MASK | ESAI_ECR_ERST_MASK,
     ESAI_ECR_ESAIEN);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable ESAI: %d\n", ret);
  return ret;
 }

 regmap_update_bits(esai_priv->regmap, REG_ESAI_PRRC,
      ESAI_PRRC_PDC_MASK, 0);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_PCRC,
      ESAI_PCRC_PC_MASK, 0);

 return 0;
}
