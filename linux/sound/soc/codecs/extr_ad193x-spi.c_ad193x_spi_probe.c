
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {scalar_t__ driver_data; } ;
struct spi_device {int dev; } ;
struct regmap_config {int val_bits; int reg_bits; int read_flag_mask; int write_flag_mask; } ;
typedef enum ad193x_type { ____Placeholder_ad193x_type } ad193x_type ;


 int ad193x_probe (int *,int ,int) ;
 struct regmap_config ad193x_regmap_config ;
 int devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int ad193x_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct regmap_config config;

 config = ad193x_regmap_config;
 config.val_bits = 8;
 config.reg_bits = 16;
 config.read_flag_mask = 0x09;
 config.write_flag_mask = 0x08;

 return ad193x_probe(&spi->dev, devm_regmap_init_spi(spi, &config),
       (enum ad193x_type)id->driver_data);
}
