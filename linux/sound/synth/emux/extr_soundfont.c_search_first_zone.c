
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_zone {int instr; int bank; struct snd_sf_zone* next_instr; } ;
struct snd_sf_list {struct snd_sf_zone** presets; } ;


 int get_index (int,int,int) ;

__attribute__((used)) static struct snd_sf_zone *
search_first_zone(struct snd_sf_list *sflist, int bank, int preset, int key)
{
 int index;
 struct snd_sf_zone *zp;

 if ((index = get_index(bank, preset, key)) < 0)
  return ((void*)0);
 for (zp = sflist->presets[index]; zp; zp = zp->next_instr) {
  if (zp->instr == preset && zp->bank == bank)
   return zp;
 }
 return ((void*)0);
}
