
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {int dummy; } ;
struct platform_device {int dev; } ;


 struct sst_pdata* dev_get_platdata (int *) ;
 int sst_byt_dsp_free (int *,struct sst_pdata*) ;

__attribute__((used)) static int sst_byt_pcm_dev_remove(struct platform_device *pdev)
{
 struct sst_pdata *sst_pdata = dev_get_platdata(&pdev->dev);

 sst_byt_dsp_free(&pdev->dev, sst_pdata);

 return 0;
}
