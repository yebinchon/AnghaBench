
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_data {int pclk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct stm32_sai_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int stm32_sai_pclk_disable(struct device *dev)
{
 struct stm32_sai_data *sai = dev_get_drvdata(dev);

 clk_disable_unprepare(sai->pclk);

 return 0;
}
