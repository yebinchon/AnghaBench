
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* uni; } ;
struct sti_uniperiph_data {TYPE_2__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_3__ {unsigned int daifmt; } ;


 struct sti_uniperiph_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

int sti_uniperiph_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct sti_uniperiph_data *priv = snd_soc_dai_get_drvdata(dai);

 priv->dai_data.uni->daifmt = fmt;

 return 0;
}
