
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs4231 {TYPE_1__* op; } ;
struct snd_card {struct snd_cs4231* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int dev ;
 int dev_set_drvdata (int *,struct snd_cs4231*) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_register (struct snd_card*) ;
 int snd_cs4231_mixer (struct snd_card*) ;
 int snd_cs4231_pcm (struct snd_card*) ;
 int snd_cs4231_timer (struct snd_card*) ;

__attribute__((used)) static int cs4231_attach_finish(struct snd_card *card)
{
 struct snd_cs4231 *chip = card->private_data;
 int err;

 err = snd_cs4231_pcm(card);
 if (err < 0)
  goto out_err;

 err = snd_cs4231_mixer(card);
 if (err < 0)
  goto out_err;

 err = snd_cs4231_timer(card);
 if (err < 0)
  goto out_err;

 err = snd_card_register(card);
 if (err < 0)
  goto out_err;

 dev_set_drvdata(&chip->op->dev, chip);

 dev++;
 return 0;

out_err:
 snd_card_free(card);
 return err;
}
