
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {struct snd_jack_kctl* private_data; } ;
struct snd_jack_kctl {int list; } ;


 int kfree (struct snd_jack_kctl*) ;
 int list_del (int *) ;

__attribute__((used)) static void snd_jack_kctl_private_free(struct snd_kcontrol *kctl)
{
 struct snd_jack_kctl *jack_kctl;

 jack_kctl = kctl->private_data;
 if (jack_kctl) {
  list_del(&jack_kctl->list);
  kfree(jack_kctl);
 }
}
