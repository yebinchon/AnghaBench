
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_i2s_priv {struct platform_device* pdev_sec; TYPE_1__* pdev; } ;
struct platform_device {int dev; int driver_override; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int device_attach (int *) ;
 char* devm_kasprintf (int *,int ,char*,int ) ;
 int kstrdup (char*,int ) ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (char const*,int) ;
 int platform_device_put (struct platform_device*) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static int i2s_create_secondary_device(struct samsung_i2s_priv *priv)
{
 struct platform_device *pdev_sec;
 const char *devname;
 int ret;

 devname = devm_kasprintf(&priv->pdev->dev, GFP_KERNEL, "%s-sec",
     dev_name(&priv->pdev->dev));
 if (!devname)
  return -ENOMEM;

 pdev_sec = platform_device_alloc(devname, -1);
 if (!pdev_sec)
  return -ENOMEM;

 pdev_sec->driver_override = kstrdup("samsung-i2s", GFP_KERNEL);

 ret = platform_device_add(pdev_sec);
 if (ret < 0) {
  platform_device_put(pdev_sec);
  return ret;
 }

 ret = device_attach(&pdev_sec->dev);
 if (ret <= 0) {
  platform_device_unregister(priv->pdev_sec);
  dev_info(&pdev_sec->dev, "device_attach() failed\n");
  return ret;
 }

 priv->pdev_sec = pdev_sec;

 return 0;
}
