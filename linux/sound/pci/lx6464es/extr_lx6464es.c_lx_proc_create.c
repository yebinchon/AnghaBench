
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct lx6464es {int dummy; } ;


 int lx_proc_levels_read ;
 int snd_card_ro_proc_new (struct snd_card*,char*,struct lx6464es*,int ) ;

__attribute__((used)) static int lx_proc_create(struct snd_card *card, struct lx6464es *chip)
{
 return snd_card_ro_proc_new(card, "levels", chip, lx_proc_levels_read);
}
