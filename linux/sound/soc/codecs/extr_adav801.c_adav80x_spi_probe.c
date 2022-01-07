
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct regmap_config {int read_flag_mask; } ;


 int adav80x_bus_probe (int *,int ) ;
 struct regmap_config adav80x_regmap_config ;
 int devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;

__attribute__((used)) static int adav80x_spi_probe(struct spi_device *spi)
{
 struct regmap_config config;

 config = adav80x_regmap_config;
 config.read_flag_mask = 0x01;

 return adav80x_bus_probe(&spi->dev, devm_regmap_init_spi(spi, &config));
}
