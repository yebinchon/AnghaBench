
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soundfont {struct snd_sf_sample* samples; } ;
struct TYPE_2__ {int sample; } ;
struct snd_sf_sample {TYPE_1__ v; struct snd_sf_sample* next; } ;



__attribute__((used)) static struct snd_sf_sample *
find_sample(struct snd_soundfont *sf, int sample_id)
{
 struct snd_sf_sample *p;

 if (sf == ((void*)0))
  return ((void*)0);

 for (p = sf->samples; p; p = p->next) {
  if (p->v.sample == sample_id)
   return p;
 }
 return ((void*)0);
}
