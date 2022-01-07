
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_list {int open_client; scalar_t__ sample_locked; scalar_t__ zone_locked; scalar_t__ sample_counter; scalar_t__ zone_counter; scalar_t__ fonts_size; int * fonts; int * currsf; scalar_t__ mem_used; int presets; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void
snd_sf_init(struct snd_sf_list *sflist)
{
 memset(sflist->presets, 0, sizeof(sflist->presets));

 sflist->mem_used = 0;
 sflist->currsf = ((void*)0);
 sflist->open_client = -1;
 sflist->fonts = ((void*)0);
 sflist->fonts_size = 0;
 sflist->zone_counter = 0;
 sflist->sample_counter = 0;
 sflist->zone_locked = 0;
 sflist->sample_locked = 0;
}
