
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {struct snd_sf_sample* samples; } ;
struct snd_sf_sample {struct snd_sf_sample* next; } ;
struct snd_sf_list {int dummy; } ;


 int GFP_KERNEL ;
 struct snd_sf_sample* kzalloc (int,int ) ;
 int set_sample_counter (struct snd_sf_list*,struct snd_soundfont*,struct snd_sf_sample*) ;

__attribute__((used)) static struct snd_sf_sample *
sf_sample_new(struct snd_sf_list *sflist, struct snd_soundfont *sf)
{
 struct snd_sf_sample *sp;

 if ((sp = kzalloc(sizeof(*sp), GFP_KERNEL)) == ((void*)0))
  return ((void*)0);

 sp->next = sf->samples;
 sf->samples = sp;

 set_sample_counter(sflist, sf, sp);
 return sp;
}
