
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_card {int dummy; } ;


 int ENOENT ;
 struct snd_kcontrol* ctl_find (struct snd_card*,char const*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static int rename_ctl(struct snd_card *card, const char *src, const char *dst)
{
 struct snd_kcontrol *kctl = ctl_find(card, src);
 if (kctl) {
  strcpy(kctl->id.name, dst);
  return 0;
 }
 return -ENOENT;
}
