
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int index; } ;
struct snd_kcontrol {scalar_t__ private_value; TYPE_1__ id; } ;
struct snd_card {int dummy; } ;


 int get_available_index (struct snd_card*,int ) ;
 int jack_detect_kctl ;
 int jack_kctl_name_gen (int ,char const*,int) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,int *) ;

struct snd_kcontrol *
snd_kctl_jack_new(const char *name, struct snd_card *card)
{
 struct snd_kcontrol *kctl;

 kctl = snd_ctl_new1(&jack_detect_kctl, ((void*)0));
 if (!kctl)
  return ((void*)0);

 jack_kctl_name_gen(kctl->id.name, name, sizeof(kctl->id.name));
 kctl->id.index = get_available_index(card, kctl->id.name);
 kctl->private_value = 0;
 return kctl;
}
