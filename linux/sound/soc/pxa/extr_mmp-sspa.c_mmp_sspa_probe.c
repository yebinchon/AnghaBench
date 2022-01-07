
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sspa_priv {int dummy; } ;
struct snd_soc_dai {int dev; } ;


 struct sspa_priv* dev_get_drvdata (int ) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct sspa_priv*) ;

__attribute__((used)) static int mmp_sspa_probe(struct snd_soc_dai *dai)
{
 struct sspa_priv *priv = dev_get_drvdata(dai->dev);

 snd_soc_dai_set_drvdata(dai, priv);
 return 0;

}
