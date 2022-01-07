
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_priv {unsigned int dai_fmt; int * ssp; int * extclk; } ;
struct snd_soc_dai {scalar_t__ id; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*) ;
 int * devm_clk_get (struct device*,char*) ;
 int kfree (struct ssp_priv*) ;
 struct ssp_priv* kzalloc (int,int ) ;
 struct device_node* of_parse_phandle (scalar_t__,char*,int ) ;
 int * pxa_ssp_request (scalar_t__,char*) ;
 int * pxa_ssp_request_of (struct device_node*,char*) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct ssp_priv*) ;

__attribute__((used)) static int pxa_ssp_probe(struct snd_soc_dai *dai)
{
 struct device *dev = dai->dev;
 struct ssp_priv *priv;
 int ret;

 priv = kzalloc(sizeof(struct ssp_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 if (dev->of_node) {
  struct device_node *ssp_handle;

  ssp_handle = of_parse_phandle(dev->of_node, "port", 0);
  if (!ssp_handle) {
   dev_err(dev, "unable to get 'port' phandle\n");
   ret = -ENODEV;
   goto err_priv;
  }

  priv->ssp = pxa_ssp_request_of(ssp_handle, "SoC audio");
  if (priv->ssp == ((void*)0)) {
   ret = -ENODEV;
   goto err_priv;
  }

  priv->extclk = devm_clk_get(dev, "extclk");
  if (IS_ERR(priv->extclk)) {
   ret = PTR_ERR(priv->extclk);
   if (ret == -EPROBE_DEFER)
    return ret;

   priv->extclk = ((void*)0);
  }
 } else {
  priv->ssp = pxa_ssp_request(dai->id + 1, "SoC audio");
  if (priv->ssp == ((void*)0)) {
   ret = -ENODEV;
   goto err_priv;
  }
 }

 priv->dai_fmt = (unsigned int) -1;
 snd_soc_dai_set_drvdata(dai, priv);

 return 0;

err_priv:
 kfree(priv);
 return ret;
}
