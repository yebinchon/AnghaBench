
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct asoc_simple_priv {int mic_jack; int hp_jack; } ;


 int PREFIX ;
 int asoc_simple_init_hp (struct snd_soc_card*,int *,int ) ;
 int asoc_simple_init_mic (struct snd_soc_card*,int *,int ) ;
 struct asoc_simple_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int simple_soc_probe(struct snd_soc_card *card)
{
 struct asoc_simple_priv *priv = snd_soc_card_get_drvdata(card);
 int ret;

 ret = asoc_simple_init_hp(card, &priv->hp_jack, PREFIX);
 if (ret < 0)
  return ret;

 ret = asoc_simple_init_mic(card, &priv->mic_jack, PREFIX);
 if (ret < 0)
  return ret;

 return 0;
}
