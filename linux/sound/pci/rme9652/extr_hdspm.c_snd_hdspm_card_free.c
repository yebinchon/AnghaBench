
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct hdspm* private_data; } ;
struct hdspm {int dummy; } ;


 int snd_hdspm_free (struct hdspm*) ;

__attribute__((used)) static void snd_hdspm_card_free(struct snd_card *card)
{
 struct hdspm *hdspm = card->private_data;

 if (hdspm)
  snd_hdspm_free(hdspm);
}
