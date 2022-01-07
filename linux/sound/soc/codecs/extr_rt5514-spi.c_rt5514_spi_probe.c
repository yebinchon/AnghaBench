
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int dev_err (int *,char*) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 struct spi_device* rt5514_spi ;
 int rt5514_spi_component ;
 int rt5514_spi_dai ;

__attribute__((used)) static int rt5514_spi_probe(struct spi_device *spi)
{
 int ret;

 rt5514_spi = spi;

 ret = devm_snd_soc_register_component(&spi->dev,
           &rt5514_spi_component,
           &rt5514_spi_dai, 1);
 if (ret < 0) {
  dev_err(&spi->dev, "Failed to register component.\n");
  return ret;
 }

 return 0;
}
