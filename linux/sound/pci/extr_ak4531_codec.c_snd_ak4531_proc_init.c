
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct snd_ak4531 {int dummy; } ;


 int snd_ak4531_proc_read ;
 int snd_card_ro_proc_new (struct snd_card*,char*,struct snd_ak4531*,int ) ;

__attribute__((used)) static void
snd_ak4531_proc_init(struct snd_card *card, struct snd_ak4531 *ak4531)
{
 snd_card_ro_proc_new(card, "ak4531", ak4531, snd_ak4531_proc_read);
}
