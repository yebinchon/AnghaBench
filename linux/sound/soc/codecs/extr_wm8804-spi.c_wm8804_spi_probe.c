
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int wm8804_probe (int *,struct regmap*) ;
 int wm8804_regmap_config ;

__attribute__((used)) static int wm8804_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_spi(spi, &wm8804_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return wm8804_probe(&spi->dev, regmap);
}
