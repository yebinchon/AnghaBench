
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_aio_chip {TYPE_1__* plls; struct regmap* regmap; TYPE_2__* pdev; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {unsigned int freq; } ;


 int A2APLLCTR1 ;
 int A2APLLCTR1_APLLX_33MHZ ;
 int A2APLLCTR1_APLLX_36MHZ ;
 int A2APLLCTR1_APLLX_MASK ;




 int EINVAL ;
 int dev_err (struct device*,char*,unsigned int) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

int aio_chip_set_pll(struct uniphier_aio_chip *chip, int pll_id,
       unsigned int freq)
{
 struct device *dev = &chip->pdev->dev;
 struct regmap *r = chip->regmap;
 int shift;
 u32 v;


 if (freq == 0)
  return 0;

 switch (pll_id) {
 case 131:
  shift = 0;
  break;
 case 129:
  shift = 1;
  break;
 case 130:
  shift = 2;
  break;
 case 128:
  shift = 3;
  break;
 default:
  dev_err(dev, "PLL(%d) not supported\n", pll_id);
  return -EINVAL;
 }

 switch (freq) {
 case 36864000:
  v = A2APLLCTR1_APLLX_36MHZ;
  break;
 case 33868800:
  v = A2APLLCTR1_APLLX_33MHZ;
  break;
 default:
  dev_err(dev, "PLL frequency not supported(%d)\n", freq);
  return -EINVAL;
 }
 chip->plls[pll_id].freq = freq;

 regmap_update_bits(r, A2APLLCTR1, A2APLLCTR1_APLLX_MASK << shift,
      v << shift);

 return 0;
}
