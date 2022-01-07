
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbri {int dummy; } ;
struct snd_card {struct snd_dbri* private_data; } ;


 int dbri_debug_read ;
 int dbri_regs_read ;
 int snd_card_ro_proc_new (struct snd_card*,char*,struct snd_dbri*,int ) ;

__attribute__((used)) static void snd_dbri_proc(struct snd_card *card)
{
 struct snd_dbri *dbri = card->private_data;

 snd_card_ro_proc_new(card, "regs", dbri, dbri_regs_read);



}
