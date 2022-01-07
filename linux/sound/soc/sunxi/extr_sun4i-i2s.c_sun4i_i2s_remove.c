
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int rst; } ;
struct platform_device {int dev; } ;


 int IS_ERR (int ) ;
 struct sun4i_i2s* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int reset_control_assert (int ) ;
 int sun4i_i2s_runtime_suspend (int *) ;

__attribute__((used)) static int sun4i_i2s_remove(struct platform_device *pdev)
{
 struct sun4i_i2s *i2s = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  sun4i_i2s_runtime_suspend(&pdev->dev);

 if (!IS_ERR(i2s->rst))
  reset_control_assert(i2s->rst);

 return 0;
}
