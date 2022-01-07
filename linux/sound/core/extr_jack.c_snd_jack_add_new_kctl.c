
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack_kctl {int dummy; } ;
struct snd_jack {int card; } ;


 int ENOMEM ;
 int snd_jack_kctl_add (struct snd_jack*,struct snd_jack_kctl*) ;
 struct snd_jack_kctl* snd_jack_kctl_new (int ,char const*,int) ;

int snd_jack_add_new_kctl(struct snd_jack *jack, const char * name, int mask)
{
 struct snd_jack_kctl *jack_kctl;

 jack_kctl = snd_jack_kctl_new(jack->card, name, mask);
 if (!jack_kctl)
  return -ENOMEM;

 snd_jack_kctl_add(jack, jack_kctl);
 return 0;
}
