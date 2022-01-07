
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {int card; } ;


 int snd_card_free (int ) ;

__attribute__((used)) static void alsa_card_pcsp_exit(struct snd_pcsp *chip)
{
 snd_card_free(chip->card);
}
