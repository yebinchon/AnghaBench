
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {int driver_data; } ;
struct spi_device {int dev; } ;
struct regmap_config {int val_bits; int reg_bits; int read_flag_mask; } ;


 int EINVAL ;
 int adau1761_probe (int *,int ,int ,int ) ;
 struct regmap_config adau1761_regmap_config ;
 int adau1761_spi_switch_mode ;
 int devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int adau1761_spi_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct regmap_config config;

 if (!id)
  return -EINVAL;

 config = adau1761_regmap_config;
 config.val_bits = 8;
 config.reg_bits = 24;
 config.read_flag_mask = 0x1;

 return adau1761_probe(&spi->dev,
  devm_regmap_init_spi(spi, &config),
  id->driver_data, adau1761_spi_switch_mode);
}
