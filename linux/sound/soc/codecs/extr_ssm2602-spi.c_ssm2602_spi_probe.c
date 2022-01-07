
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int SSM2602 ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int ssm2602_probe (int *,int ,int ) ;
 int ssm2602_regmap_config ;

__attribute__((used)) static int ssm2602_spi_probe(struct spi_device *spi)
{
 return ssm2602_probe(&spi->dev, SSM2602,
  devm_regmap_init_spi(spi, &ssm2602_regmap_config));
}
