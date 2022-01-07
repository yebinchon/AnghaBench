
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct aic32x4_priv {int dummy; } ;


 int aic32x4_disable_regulators (struct aic32x4_priv*) ;
 struct aic32x4_priv* dev_get_drvdata (struct device*) ;

int aic32x4_remove(struct device *dev)
{
 struct aic32x4_priv *aic32x4 = dev_get_drvdata(dev);

 aic32x4_disable_regulators(aic32x4);

 return 0;
}
