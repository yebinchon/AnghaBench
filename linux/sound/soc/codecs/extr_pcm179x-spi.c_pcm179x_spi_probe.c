
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int pcm179x_common_init (int *,struct regmap*) ;
 int pcm179x_regmap_config ;

__attribute__((used)) static int pcm179x_spi_probe(struct spi_device *spi)
{
 struct regmap *regmap;
 int ret;

 regmap = devm_regmap_init_spi(spi, &pcm179x_regmap_config);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  dev_err(&spi->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }

 return pcm179x_common_init(&spi->dev, regmap);
}
