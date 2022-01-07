
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {int dsp; } ;
struct platform_device {int dev; } ;
struct hsw_priv_data {int hsw; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct sst_pdata* dev_get_platdata (int *) ;
 struct hsw_priv_data* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int hsw_dai_component ;
 int hsw_dais ;
 int platform_set_drvdata (struct platform_device*,struct hsw_priv_data*) ;
 int sst_hsw_dsp_free (int *,struct sst_pdata*) ;
 int sst_hsw_dsp_init (int *,struct sst_pdata*) ;

__attribute__((used)) static int hsw_pcm_dev_probe(struct platform_device *pdev)
{
 struct sst_pdata *sst_pdata = dev_get_platdata(&pdev->dev);
 struct hsw_priv_data *priv_data;
 int ret;

 if (!sst_pdata)
  return -EINVAL;

 priv_data = devm_kzalloc(&pdev->dev, sizeof(*priv_data), GFP_KERNEL);
 if (!priv_data)
  return -ENOMEM;

 ret = sst_hsw_dsp_init(&pdev->dev, sst_pdata);
 if (ret < 0)
  return -ENODEV;

 priv_data->hsw = sst_pdata->dsp;
 platform_set_drvdata(pdev, priv_data);

 ret = devm_snd_soc_register_component(&pdev->dev, &hsw_dai_component,
  hsw_dais, ARRAY_SIZE(hsw_dais));
 if (ret < 0)
  goto err_plat;

 return 0;

err_plat:
 sst_hsw_dsp_free(&pdev->dev, sst_pdata);
 return 0;
}
