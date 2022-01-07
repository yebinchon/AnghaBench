
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct regmap_config {int reg_bits; int pad_bits; int val_bits; int read_flag_mask; } ;
struct regmap {int dummy; } ;


 int aic32x4_probe (int *,struct regmap*) ;
 struct regmap_config aic32x4_regmap_config ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;

__attribute__((used)) static int aic32x4_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;
 struct regmap_config config;

 config = aic32x4_regmap_config;
 config.reg_bits = 7;
 config.pad_bits = 1;
 config.val_bits = 8;
 config.read_flag_mask = 0x01;

 regmap = devm_regmap_init_spi(spi, &config);
 return aic32x4_probe(&spi->dev, regmap);
}
