
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct device {int dummy; } ;


 int dev_set_drvdata (struct device*,struct snd_card*) ;
 int snd_audiodrive_probe (struct snd_card*,int) ;
 int snd_card_free (struct snd_card*) ;
 int snd_es18xx_card_new (struct device*,int,struct snd_card**) ;

__attribute__((used)) static int snd_es18xx_isa_probe1(int dev, struct device *devptr)
{
 struct snd_card *card;
 int err;

 err = snd_es18xx_card_new(devptr, dev, &card);
 if (err < 0)
  return err;
 if ((err = snd_audiodrive_probe(card, dev)) < 0) {
  snd_card_free(card);
  return err;
 }
 dev_set_drvdata(devptr, card);
 return 0;
}
