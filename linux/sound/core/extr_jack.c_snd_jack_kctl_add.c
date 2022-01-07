
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack_kctl {int list; } ;
struct snd_jack {int kctl_list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void snd_jack_kctl_add(struct snd_jack *jack, struct snd_jack_kctl *jack_kctl)
{
 list_add_tail(&jack_kctl->list, &jack->kctl_list);
}
