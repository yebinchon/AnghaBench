
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ux500_msp_i2s_drvdata {int msp; } ;
struct platform_device {int dev; } ;


 int PRCMU_QOS_APE_OPP ;
 struct ux500_msp_i2s_drvdata* dev_get_drvdata (int *) ;
 int prcmu_qos_remove_requirement (int ,char*) ;
 int snd_soc_unregister_component (int *) ;
 int ux500_msp_i2s_cleanup_msp (struct platform_device*,int ) ;
 int ux500_pcm_unregister_platform (struct platform_device*) ;

__attribute__((used)) static int ux500_msp_drv_remove(struct platform_device *pdev)
{
 struct ux500_msp_i2s_drvdata *drvdata = dev_get_drvdata(&pdev->dev);

 ux500_pcm_unregister_platform(pdev);

 snd_soc_unregister_component(&pdev->dev);

 prcmu_qos_remove_requirement(PRCMU_QOS_APE_OPP, "ux500_msp_i2s");

 ux500_msp_i2s_cleanup_msp(pdev, drvdata->msp);

 return 0;
}
