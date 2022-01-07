
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro {int dummy; } ;
struct snd_card {int dummy; } ;


 int snd_card_ro_proc_new (struct snd_card*,char*,struct snd_miro*,int ) ;
 int snd_miro_proc_read ;

__attribute__((used)) static void snd_miro_proc_init(struct snd_card *card,
          struct snd_miro *miro)
{
 snd_card_ro_proc_new(card, "miro", miro, snd_miro_proc_read);
}
