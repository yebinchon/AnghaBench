
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soundfont_voice_info {int sample_mode; int loopend; int loopstart; int end; int start; int sample; } ;
struct snd_soundfont {int dummy; } ;
struct TYPE_2__ {int mode_flags; scalar_t__ loopend; scalar_t__ loopstart; scalar_t__ end; scalar_t__ start; } ;
struct snd_sf_sample {TYPE_1__ v; } ;


 struct snd_sf_sample* find_sample (struct snd_soundfont*,int ) ;

__attribute__((used)) static struct snd_sf_sample *
set_sample(struct snd_soundfont *sf, struct soundfont_voice_info *avp)
{
 struct snd_sf_sample *sample;

 sample = find_sample(sf, avp->sample);
 if (sample == ((void*)0))
  return ((void*)0);






 avp->start += sample->v.start;
 avp->end += sample->v.end;
 avp->loopstart += sample->v.loopstart;
 avp->loopend += sample->v.loopend;


 avp->sample_mode = sample->v.mode_flags;

 return sample;
}
