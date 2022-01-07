
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sf_id; int low; } ;
struct snd_sf_zone {scalar_t__ counter; struct snd_sf_zone* next_instr; struct snd_sf_zone* next_zone; TYPE_1__ v; int instr; int bank; } ;
struct snd_sf_list {struct snd_sf_zone** presets; } ;


 int delete_preset (struct snd_sf_list*,struct snd_sf_zone*) ;
 int get_index (int ,int ,int ) ;
 struct snd_sf_zone* search_first_zone (struct snd_sf_list*,int ,int ,int ) ;

__attribute__((used)) static void
add_preset(struct snd_sf_list *sflist, struct snd_sf_zone *cur)
{
 struct snd_sf_zone *zone;
 int index;

 zone = search_first_zone(sflist, cur->bank, cur->instr, cur->v.low);
 if (zone && zone->v.sf_id != cur->v.sf_id) {

  struct snd_sf_zone *p;

  for (p = zone; p; p = p->next_zone) {
   if (p->counter > cur->counter)

    return;
  }

  delete_preset(sflist, zone);
  zone = ((void*)0);
 }


 if ((index = get_index(cur->bank, cur->instr, cur->v.low)) < 0)
  return;
 cur->next_zone = zone;
 cur->next_instr = sflist->presets[index];
 sflist->presets[index] = cur;
}
