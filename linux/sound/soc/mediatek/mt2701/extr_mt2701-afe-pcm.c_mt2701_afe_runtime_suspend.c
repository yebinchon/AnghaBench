
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dummy; } ;
struct device {int dummy; } ;


 struct mtk_base_afe* dev_get_drvdata (struct device*) ;
 int mt2701_afe_disable_clock (struct mtk_base_afe*) ;

__attribute__((used)) static int mt2701_afe_runtime_suspend(struct device *dev)
{
 struct mtk_base_afe *afe = dev_get_drvdata(dev);

 return mt2701_afe_disable_clock(afe);
}
