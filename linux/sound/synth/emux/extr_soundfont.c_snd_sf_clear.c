
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soundfont {struct snd_soundfont* next; struct snd_soundfont* samples; struct snd_soundfont* zones; } ;
struct snd_sf_zone {struct snd_sf_zone* next; struct snd_sf_zone* samples; struct snd_sf_zone* zones; } ;
struct snd_sf_sample {struct snd_sf_sample* next; struct snd_sf_sample* samples; struct snd_sf_sample* zones; } ;
struct TYPE_2__ {int private_data; int (* sample_free ) (int ,struct snd_soundfont*,int ) ;} ;
struct snd_sf_list {int memhdr; TYPE_1__ callback; struct snd_soundfont* fonts; } ;


 int kfree (struct snd_soundfont*) ;
 int snd_sf_init (struct snd_sf_list*) ;
 int stub1 (int ,struct snd_soundfont*,int ) ;

__attribute__((used)) static void
snd_sf_clear(struct snd_sf_list *sflist)
{
 struct snd_soundfont *sf, *nextsf;
 struct snd_sf_zone *zp, *nextzp;
 struct snd_sf_sample *sp, *nextsp;

 for (sf = sflist->fonts; sf; sf = nextsf) {
  nextsf = sf->next;
  for (zp = sf->zones; zp; zp = nextzp) {
   nextzp = zp->next;
   kfree(zp);
  }
  for (sp = sf->samples; sp; sp = nextsp) {
   nextsp = sp->next;
   if (sflist->callback.sample_free)
    sflist->callback.sample_free(sflist->callback.private_data,
            sp, sflist->memhdr);
   kfree(sp);
  }
  kfree(sf);
 }

 snd_sf_init(sflist);
}
