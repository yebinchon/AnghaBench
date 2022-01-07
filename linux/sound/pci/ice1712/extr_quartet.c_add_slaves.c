
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;


 struct snd_kcontrol* ctl_find (struct snd_card*,char* const) ;
 int snd_ctl_add_slave (struct snd_kcontrol*,struct snd_kcontrol*) ;

__attribute__((used)) static void add_slaves(struct snd_card *card,
         struct snd_kcontrol *master, char * const *list)
{
 for (; *list; list++) {
  struct snd_kcontrol *slave = ctl_find(card, *list);
  if (slave)
   snd_ctl_add_slave(master, slave);
 }
}
