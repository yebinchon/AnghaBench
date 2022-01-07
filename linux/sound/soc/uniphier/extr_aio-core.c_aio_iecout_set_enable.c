
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_chip {struct regmap* regmap_sg; } ;
struct regmap {int dummy; } ;


 int SG_AOUTEN ;
 int regmap_write (struct regmap*,int ,int ) ;

void aio_iecout_set_enable(struct uniphier_aio_chip *chip, bool enable)
{
 struct regmap *r = chip->regmap_sg;

 if (!r)
  return;

 regmap_write(r, SG_AOUTEN, (enable) ? ~0 : 0);
}
