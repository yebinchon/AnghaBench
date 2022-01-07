
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct snd_ac97_template {int scaps; } ;


 int AC97_SCAP_INV_EAPD ;
 int machine_is_olpc () ;
 scalar_t__ olpc_board_at_least (int ) ;
 int olpc_board_pre (int) ;

void olpc_prequirks(struct snd_card *card,
      struct snd_ac97_template *ac97)
{
 if (!machine_is_olpc())
  return;


 if (olpc_board_at_least(olpc_board_pre(0xb3)))
  ac97->scaps |= AC97_SCAP_INV_EAPD;
}
