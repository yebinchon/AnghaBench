
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio_chip {int num_plls; TYPE_2__* plls; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int enable; } ;
struct TYPE_3__ {struct device dev; } ;


 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static bool is_valid_pll(struct uniphier_aio_chip *chip, int pll_id)
{
 struct device *dev = &chip->pdev->dev;

 if (pll_id < 0 || chip->num_plls <= pll_id) {
  dev_err(dev, "PLL(%d) is not supported\n", pll_id);
  return 0;
 }

 return chip->plls[pll_id].enable;
}
