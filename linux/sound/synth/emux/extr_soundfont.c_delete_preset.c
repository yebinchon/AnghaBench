
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int low; } ;
struct snd_sf_zone {struct snd_sf_zone* next_zone; struct snd_sf_zone* next_instr; TYPE_1__ v; int instr; int bank; } ;
struct snd_sf_list {struct snd_sf_zone** presets; } ;


 int get_index (int ,int ,int ) ;

__attribute__((used)) static void
delete_preset(struct snd_sf_list *sflist, struct snd_sf_zone *zp)
{
 int index;
 struct snd_sf_zone *p;

 if ((index = get_index(zp->bank, zp->instr, zp->v.low)) < 0)
  return;
 for (p = sflist->presets[index]; p; p = p->next_instr) {
  while (p->next_instr == zp) {
   p->next_instr = zp->next_instr;
   zp = zp->next_zone;
   if (zp == ((void*)0))
    return;
  }
 }
}
