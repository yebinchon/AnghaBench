
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {struct snd_sf_zone* zones; } ;
struct snd_sf_zone {int v; struct snd_sf_zone* next; } ;
struct snd_sf_list {int dummy; } ;


 int GFP_KERNEL ;
 int init_voice_info (int *) ;
 struct snd_sf_zone* kzalloc (int,int ) ;
 int set_zone_counter (struct snd_sf_list*,struct snd_soundfont*,struct snd_sf_zone*) ;

__attribute__((used)) static struct snd_sf_zone *
sf_zone_new(struct snd_sf_list *sflist, struct snd_soundfont *sf)
{
 struct snd_sf_zone *zp;

 if ((zp = kzalloc(sizeof(*zp), GFP_KERNEL)) == ((void*)0))
  return ((void*)0);
 zp->next = sf->zones;
 sf->zones = zp;

 init_voice_info(&zp->v);

 set_zone_counter(sflist, sf, zp);
 return zp;
}
