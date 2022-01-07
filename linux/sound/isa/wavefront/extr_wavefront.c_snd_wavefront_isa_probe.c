
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct device {int dummy; } ;


 int dev_set_drvdata (struct device*,struct snd_card*) ;
 int snd_card_free (struct snd_card*) ;
 int snd_wavefront_card_new (struct device*,unsigned int,struct snd_card**) ;
 int snd_wavefront_probe (struct snd_card*,unsigned int) ;

__attribute__((used)) static int snd_wavefront_isa_probe(struct device *pdev,
       unsigned int dev)
{
 struct snd_card *card;
 int err;

 err = snd_wavefront_card_new(pdev, dev, &card);
 if (err < 0)
  return err;
 if ((err = snd_wavefront_probe(card, dev)) < 0) {
  snd_card_free(card);
  return err;
 }

 dev_set_drvdata(pdev, card);
 return 0;
}
