
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {int type; } ;
struct snd_sf_zone {scalar_t__ counter; } ;
struct snd_sf_list {scalar_t__ zone_counter; scalar_t__ zone_locked; } ;


 int SNDRV_SFNT_PAT_LOCKED ;

__attribute__((used)) static void
set_zone_counter(struct snd_sf_list *sflist, struct snd_soundfont *sf,
   struct snd_sf_zone *zp)
{
 zp->counter = sflist->zone_counter++;
 if (sf->type & SNDRV_SFNT_PAT_LOCKED)
  sflist->zone_locked = sflist->zone_counter;
}
