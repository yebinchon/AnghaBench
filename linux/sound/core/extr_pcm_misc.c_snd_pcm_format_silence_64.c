
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ snd_pcm_format_t ;
struct TYPE_2__ {unsigned char const* silence; int phys; } ;
typedef scalar_t__ INT ;


 scalar_t__ SNDRV_PCM_FORMAT_LAST ;
 TYPE_1__* pcm_formats ;

const unsigned char *snd_pcm_format_silence_64(snd_pcm_format_t format)
{
 if ((INT)format < 0 || (INT)format > (INT)SNDRV_PCM_FORMAT_LAST)
  return ((void*)0);
 if (! pcm_formats[(INT)format].phys)
  return ((void*)0);
 return pcm_formats[(INT)format].silence;
}
