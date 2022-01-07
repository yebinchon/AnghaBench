
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct pcm3060_priv {int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct pcm3060_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int pcm3060_probe (int *) ;
 int pcm3060_regmap ;
 int spi_set_drvdata (struct spi_device*,struct pcm3060_priv*) ;

__attribute__((used)) static int pcm3060_spi_probe(struct spi_device *spi)
{
 struct pcm3060_priv *priv;

 priv = devm_kzalloc(&spi->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spi_set_drvdata(spi, priv);

 priv->regmap = devm_regmap_init_spi(spi, &pcm3060_regmap);
 if (IS_ERR(priv->regmap))
  return PTR_ERR(priv->regmap);

 return pcm3060_probe(&spi->dev);
}
