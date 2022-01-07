
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int irq; int dev; } ;
struct regmap {int dummy; } ;
typedef enum pcm186x_type { ____Placeholder_pcm186x_type } pcm186x_type ;
struct TYPE_2__ {int driver_data; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int pcm186x_probe (int *,int const,int,struct regmap*) ;
 int pcm186x_regmap ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int pcm186x_spi_probe(struct spi_device *spi)
{
 const enum pcm186x_type type =
    (enum pcm186x_type)spi_get_device_id(spi)->driver_data;
 int irq = spi->irq;
 struct regmap *regmap;

 regmap = devm_regmap_init_spi(spi, &pcm186x_regmap);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return pcm186x_probe(&spi->dev, type, irq, regmap);
}
