
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack_zone {int list; } ;
struct snd_soc_jack {int jack_zones; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;

int snd_soc_jack_add_zones(struct snd_soc_jack *jack, int count,
     struct snd_soc_jack_zone *zones)
{
 int i;

 for (i = 0; i < count; i++) {
  INIT_LIST_HEAD(&zones[i].list);
  list_add(&(zones[i].list), &jack->jack_zones);
 }
 return 0;
}
