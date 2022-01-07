
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int pcm512x_probe (int *,struct regmap*) ;
 int pcm512x_regmap ;

__attribute__((used)) static int pcm512x_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;
 int ret;

 regmap = devm_regmap_init_spi(spi, &pcm512x_regmap);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  return ret;
 }

 return pcm512x_probe(&spi->dev, regmap);
}
