
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int es8328_probe (int *,int ) ;
 int es8328_regmap_config ;

__attribute__((used)) static int es8328_spi_probe(struct spi_device *spi)
{
 return es8328_probe(&spi->dev,
   devm_regmap_init_spi(spi, &es8328_regmap_config));
}
