
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; int mode; } ;
struct regmap {int dummy; } ;


 int SPI_MODE_0 ;
 int dev_dbg (int *,char*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int spi_setup (struct spi_device*) ;
 int tlv320aic23_probe (int *,struct regmap*) ;
 int tlv320aic23_regmap ;

__attribute__((used)) static int aic23_spi_probe(struct spi_device *spi)
{
 int ret;
 struct regmap *regmap;

 dev_dbg(&spi->dev, "probing tlv320aic23 spi device\n");

 spi->mode = SPI_MODE_0;
 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 regmap = devm_regmap_init_spi(spi, &tlv320aic23_regmap);
 return tlv320aic23_probe(&spi->dev, regmap);
}
