
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {int dummy; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int byt_dai_component ;
 int byt_dais ;
 struct sst_pdata* dev_get_platdata (int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int sst_byt_dsp_free (int *,struct sst_pdata*) ;
 int sst_byt_dsp_init (int *,struct sst_pdata*) ;

__attribute__((used)) static int sst_byt_pcm_dev_probe(struct platform_device *pdev)
{
 struct sst_pdata *sst_pdata = dev_get_platdata(&pdev->dev);
 int ret;

 ret = sst_byt_dsp_init(&pdev->dev, sst_pdata);
 if (ret < 0)
  return -ENODEV;

 ret = devm_snd_soc_register_component(&pdev->dev, &byt_dai_component,
      byt_dais, ARRAY_SIZE(byt_dais));
 if (ret < 0)
  goto err_plat;

 return 0;

err_plat:
 sst_byt_dsp_free(&pdev->dev, sst_pdata);
 return ret;
}
