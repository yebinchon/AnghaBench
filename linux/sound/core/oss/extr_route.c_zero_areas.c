
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_plugin_channel {scalar_t__ enabled; int area; scalar_t__ wanted; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_format_t ;


 int snd_pcm_area_silence (int *,int ,int ,int ) ;

__attribute__((used)) static void zero_areas(struct snd_pcm_plugin_channel *dvp, int ndsts,
         snd_pcm_uframes_t frames, snd_pcm_format_t format)
{
 int dst = 0;
 for (; dst < ndsts; ++dst) {
  if (dvp->wanted)
   snd_pcm_area_silence(&dvp->area, 0, frames, format);
  dvp->enabled = 0;
  dvp++;
 }
}
