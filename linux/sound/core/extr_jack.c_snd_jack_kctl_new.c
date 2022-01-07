
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_free; struct snd_jack_kctl* private_data; } ;
struct snd_jack_kctl {unsigned int mask_bits; struct snd_kcontrol* kctl; } ;
struct snd_card {int dummy; } ;


 int GFP_KERNEL ;
 struct snd_jack_kctl* kzalloc (int,int ) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 int snd_ctl_free_one (struct snd_kcontrol*) ;
 int snd_jack_kctl_private_free ;
 struct snd_kcontrol* snd_kctl_jack_new (char const*,struct snd_card*) ;

__attribute__((used)) static struct snd_jack_kctl * snd_jack_kctl_new(struct snd_card *card, const char *name, unsigned int mask)
{
 struct snd_kcontrol *kctl;
 struct snd_jack_kctl *jack_kctl;
 int err;

 kctl = snd_kctl_jack_new(name, card);
 if (!kctl)
  return ((void*)0);

 err = snd_ctl_add(card, kctl);
 if (err < 0)
  return ((void*)0);

 jack_kctl = kzalloc(sizeof(*jack_kctl), GFP_KERNEL);

 if (!jack_kctl)
  goto error;

 jack_kctl->kctl = kctl;
 jack_kctl->mask_bits = mask;

 kctl->private_data = jack_kctl;
 kctl->private_free = snd_jack_kctl_private_free;

 return jack_kctl;
error:
 snd_ctl_free_one(kctl);
 return ((void*)0);
}
