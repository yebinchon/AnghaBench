
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {scalar_t__ private; } ;
struct imx8_priv {int num_domains; int * pd_dev; int * link; int ipc_dev; } ;


 int dev_pm_domain_detach (int ,int) ;
 int device_link_del (int ) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int imx8_remove(struct snd_sof_dev *sdev)
{
 struct imx8_priv *priv = (struct imx8_priv *)sdev->private;
 int i;

 platform_device_unregister(priv->ipc_dev);

 for (i = 0; i < priv->num_domains; i++) {
  device_link_del(priv->link[i]);
  dev_pm_domain_detach(priv->pd_dev[i], 0);
 }

 return 0;
}
