
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int id; } ;


 struct snd_card** snd_cards ;
 int snd_ecards_limit ;
 int snd_info_check_reserved_words (char const*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static bool card_id_ok(struct snd_card *card, const char *id)
{
 int i;
 if (!snd_info_check_reserved_words(id))
  return 0;
 for (i = 0; i < snd_ecards_limit; i++) {
  if (snd_cards[i] && snd_cards[i] != card &&
      !strcmp(snd_cards[i]->id, id))
   return 0;
 }
 return 1;
}
