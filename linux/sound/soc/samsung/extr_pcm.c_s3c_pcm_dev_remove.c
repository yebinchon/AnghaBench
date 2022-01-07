
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_pcm_info {int pclk; int cclk; } ;
struct platform_device {size_t id; int dev; } ;


 int clk_disable_unprepare (int ) ;
 int pm_runtime_disable (int *) ;
 struct s3c_pcm_info* s3c_pcm ;

__attribute__((used)) static int s3c_pcm_dev_remove(struct platform_device *pdev)
{
 struct s3c_pcm_info *pcm = &s3c_pcm[pdev->id];

 pm_runtime_disable(&pdev->dev);
 clk_disable_unprepare(pcm->cclk);
 clk_disable_unprepare(pcm->pclk);

 return 0;
}
