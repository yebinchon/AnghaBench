
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_platform_data {int strm_map_size; int pdev_strm_map; } ;
struct sst_data {int lock; struct platform_device* pdev; struct sst_platform_data* pdata; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct sst_data*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int dpcm_strm_map ;
 int mutex_init (int *) ;
 int sst_platform_dai ;
 int sst_soc_platform_drv ;

__attribute__((used)) static int sst_platform_probe(struct platform_device *pdev)
{
 struct sst_data *drv;
 int ret;
 struct sst_platform_data *pdata;

 drv = devm_kzalloc(&pdev->dev, sizeof(*drv), GFP_KERNEL);
 if (drv == ((void*)0)) {
  return -ENOMEM;
 }

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (pdata == ((void*)0)) {
  return -ENOMEM;
 }

 pdata->pdev_strm_map = dpcm_strm_map;
 pdata->strm_map_size = ARRAY_SIZE(dpcm_strm_map);
 drv->pdata = pdata;
 drv->pdev = pdev;
 mutex_init(&drv->lock);
 dev_set_drvdata(&pdev->dev, drv);

 ret = devm_snd_soc_register_component(&pdev->dev, &sst_soc_platform_drv,
    sst_platform_dai, ARRAY_SIZE(sst_platform_dai));
 if (ret)
  dev_err(&pdev->dev, "registering cpu dais failed\n");

 return ret;
}
