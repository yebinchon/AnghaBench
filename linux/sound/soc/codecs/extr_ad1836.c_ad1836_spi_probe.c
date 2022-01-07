
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct ad1836_priv {size_t type; int regmap; } ;
struct TYPE_2__ {size_t driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ad1836_regmap_config ;
 int * ad183x_dais ;
 struct ad1836_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int soc_component_dev_ad1836 ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct ad1836_priv*) ;

__attribute__((used)) static int ad1836_spi_probe(struct spi_device *spi)
{
 struct ad1836_priv *ad1836;
 int ret;

 ad1836 = devm_kzalloc(&spi->dev, sizeof(struct ad1836_priv),
         GFP_KERNEL);
 if (ad1836 == ((void*)0))
  return -ENOMEM;

 ad1836->regmap = devm_regmap_init_spi(spi, &ad1836_regmap_config);
 if (IS_ERR(ad1836->regmap))
  return PTR_ERR(ad1836->regmap);

 ad1836->type = spi_get_device_id(spi)->driver_data;

 spi_set_drvdata(spi, ad1836);

 ret = devm_snd_soc_register_component(&spi->dev,
   &soc_component_dev_ad1836, &ad183x_dais[ad1836->type], 1);
 return ret;
}
