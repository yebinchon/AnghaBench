
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct aic26 {int master; struct spi_device* spi; int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int aic26_dai ;
 int aic26_regmap ;
 int aic26_soc_component_dev ;
 int dev_dbg (int *,char*) ;
 int dev_set_drvdata (int *,struct aic26*) ;
 struct aic26* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;

__attribute__((used)) static int aic26_spi_probe(struct spi_device *spi)
{
 struct aic26 *aic26;
 int ret;

 dev_dbg(&spi->dev, "probing tlv320aic26 spi device\n");


 aic26 = devm_kzalloc(&spi->dev, sizeof *aic26, GFP_KERNEL);
 if (!aic26)
  return -ENOMEM;

 aic26->regmap = devm_regmap_init_spi(spi, &aic26_regmap);
 if (IS_ERR(aic26->regmap))
  return PTR_ERR(aic26->regmap);


 aic26->spi = spi;
 dev_set_drvdata(&spi->dev, aic26);
 aic26->master = 1;

 ret = devm_snd_soc_register_component(&spi->dev,
   &aic26_soc_component_dev, &aic26_dai, 1);
 return ret;
}
