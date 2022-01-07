
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {scalar_t__ regmap; } ;
struct platform_device {int dev; } ;


 int IS_ERR (scalar_t__) ;
 int XTFPGA_I2S_CONFIG ;
 int XTFPGA_I2S_INT_MASK ;
 int XTFPGA_I2S_INT_STATUS ;
 int XTFPGA_I2S_INT_VALID ;
 struct xtfpga_i2s* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int regmap_write (scalar_t__,int ,int ) ;
 int xtfpga_i2s_runtime_suspend (int *) ;

__attribute__((used)) static int xtfpga_i2s_remove(struct platform_device *pdev)
{
 struct xtfpga_i2s *i2s = dev_get_drvdata(&pdev->dev);

 if (i2s->regmap && !IS_ERR(i2s->regmap)) {
  regmap_write(i2s->regmap, XTFPGA_I2S_CONFIG, 0);
  regmap_write(i2s->regmap, XTFPGA_I2S_INT_MASK, 0);
  regmap_write(i2s->regmap, XTFPGA_I2S_INT_STATUS,
        XTFPGA_I2S_INT_VALID);
 }
 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  xtfpga_i2s_runtime_suspend(&pdev->dev);
 return 0;
}
