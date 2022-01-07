
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct regmap_config {int reg_bits; int val_bits; int read_flag_mask; int write_flag_mask; } ;


 int cs4271_probe (int *,int ) ;
 struct regmap_config cs4271_regmap_config ;
 int devm_regmap_init_spi (struct spi_device*,struct regmap_config*) ;

__attribute__((used)) static int cs4271_spi_probe(struct spi_device *spi)
{
 struct regmap_config config;

 config = cs4271_regmap_config;
 config.reg_bits = 16;
 config.val_bits = 8;
 config.read_flag_mask = 0x21;
 config.write_flag_mask = 0x20;

 return cs4271_probe(&spi->dev, devm_regmap_init_spi(spi, &config));
}
