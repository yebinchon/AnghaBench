
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pistachio_internal_dac {int supply; } ;


 struct pistachio_internal_dac* dev_get_drvdata (int *) ;
 int pistachio_internal_dac_pwr_off (struct pistachio_internal_dac*) ;
 int pm_runtime_disable (int *) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int pistachio_internal_dac_remove(struct platform_device *pdev)
{
 struct pistachio_internal_dac *dac = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);
 pistachio_internal_dac_pwr_off(dac);
 regulator_disable(dac->supply);

 return 0;
}
