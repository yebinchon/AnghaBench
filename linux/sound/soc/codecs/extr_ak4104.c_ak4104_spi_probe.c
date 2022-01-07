
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int dev; int mode; } ;
struct gpio_desc {int dummy; } ;
struct ak4104_private {struct gpio_desc* regmap; struct gpio_desc* regulator; } ;


 int AK4104_REG_RESERVED ;
 unsigned int AK4104_RESERVED_VAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int SPI_MODE_0 ;
 int ak4104_dai ;
 int ak4104_regmap ;
 int dev_err (int *,char*,int) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 struct ak4104_private* devm_kzalloc (int *,int,int ) ;
 struct gpio_desc* devm_regmap_init_spi (struct spi_device*,int *) ;
 struct gpio_desc* devm_regulator_get (int *,char*) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int regmap_read (struct gpio_desc*,int ,unsigned int*) ;
 int soc_component_device_ak4104 ;
 int spi_set_drvdata (struct spi_device*,struct ak4104_private*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ak4104_spi_probe(struct spi_device *spi)
{
 struct ak4104_private *ak4104;
 struct gpio_desc *reset_gpiod;
 unsigned int val;
 int ret;

 spi->bits_per_word = 8;
 spi->mode = SPI_MODE_0;
 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 ak4104 = devm_kzalloc(&spi->dev, sizeof(struct ak4104_private),
         GFP_KERNEL);
 if (ak4104 == ((void*)0))
  return -ENOMEM;

 ak4104->regulator = devm_regulator_get(&spi->dev, "vdd");
 if (IS_ERR(ak4104->regulator)) {
  ret = PTR_ERR(ak4104->regulator);
  dev_err(&spi->dev, "Unable to get Vdd regulator: %d\n", ret);
  return ret;
 }

 ak4104->regmap = devm_regmap_init_spi(spi, &ak4104_regmap);
 if (IS_ERR(ak4104->regmap)) {
  ret = PTR_ERR(ak4104->regmap);
  return ret;
 }

 reset_gpiod = devm_gpiod_get_optional(&spi->dev, "reset",
           GPIOD_OUT_HIGH);
 if (IS_ERR(reset_gpiod) &&
     PTR_ERR(reset_gpiod) == -EPROBE_DEFER)
  return -EPROBE_DEFER;




 ret = regmap_read(ak4104->regmap, AK4104_REG_RESERVED, &val);
 if (ret != 0)
  return ret;
 if (val != AK4104_RESERVED_VAL)
  return -ENODEV;

 spi_set_drvdata(spi, ak4104);

 ret = devm_snd_soc_register_component(&spi->dev,
   &soc_component_device_ak4104, &ak4104_dai, 1);
 return ret;
}
