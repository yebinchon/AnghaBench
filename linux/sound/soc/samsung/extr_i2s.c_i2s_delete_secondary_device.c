
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_i2s_priv {int * pdev_sec; } ;


 int platform_device_unregister (int *) ;

__attribute__((used)) static void i2s_delete_secondary_device(struct samsung_i2s_priv *priv)
{
 platform_device_unregister(priv->pdev_sec);
 priv->pdev_sec = ((void*)0);
}
