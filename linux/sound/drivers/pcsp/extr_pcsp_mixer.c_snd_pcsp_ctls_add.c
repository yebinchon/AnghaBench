
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {struct snd_card* card; } ;
struct snd_kcontrol_new {int dummy; } ;
struct snd_card {int dummy; } ;


 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_pcsp*) ;

__attribute__((used)) static int snd_pcsp_ctls_add(struct snd_pcsp *chip,
        struct snd_kcontrol_new *ctls, int num)
{
 int i, err;
 struct snd_card *card = chip->card;
 for (i = 0; i < num; i++) {
  err = snd_ctl_add(card, snd_ctl_new1(ctls + i, chip));
  if (err < 0)
   return err;
 }
 return 0;
}
