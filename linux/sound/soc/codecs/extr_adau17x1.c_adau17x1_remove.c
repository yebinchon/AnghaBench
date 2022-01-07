
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adau {scalar_t__ mclk; } ;


 int clk_disable_unprepare (scalar_t__) ;
 struct adau* dev_get_drvdata (struct device*) ;

void adau17x1_remove(struct device *dev)
{
 struct adau *adau = dev_get_drvdata(dev);

 if (adau->mclk)
  clk_disable_unprepare(adau->mclk);
}
