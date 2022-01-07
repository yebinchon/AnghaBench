
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_sb16 {int fm_res; } ;
struct snd_card {struct snd_card_sb16* private_data; } ;
struct device {int dummy; } ;


 void** awe_port ;
 int dev_set_drvdata (struct device*,struct snd_card*) ;
 void** fm_port ;
 void** port ;
 int request_region (int,int,char*) ;
 int snd_card_free (struct snd_card*) ;
 int snd_sb16_card_new (struct device*,int,struct snd_card**) ;
 int snd_sb16_probe (struct snd_card*,int) ;

__attribute__((used)) static int snd_sb16_isa_probe1(int dev, struct device *pdev)
{
 struct snd_card_sb16 *acard;
 struct snd_card *card;
 int err;

 err = snd_sb16_card_new(pdev, dev, &card);
 if (err < 0)
  return err;

 acard = card->private_data;

 fm_port[dev] = port[dev];

 acard->fm_res = request_region(0x388, 4, "SoundBlaster FM");





 if ((err = snd_sb16_probe(card, dev)) < 0) {
  snd_card_free(card);
  return err;
 }
 dev_set_drvdata(pdev, card);
 return 0;
}
