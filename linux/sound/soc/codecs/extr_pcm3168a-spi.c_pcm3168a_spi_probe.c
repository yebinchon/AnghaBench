
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int pcm3168a_probe (int *,struct regmap*) ;
 int pcm3168a_regmap ;

__attribute__((used)) static int pcm3168a_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_spi(spi, &pcm3168a_regmap);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return pcm3168a_probe(&spi->dev, regmap);
}
