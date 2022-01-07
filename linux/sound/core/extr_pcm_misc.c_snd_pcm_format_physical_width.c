
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ snd_pcm_format_t ;
struct TYPE_2__ {int phys; } ;
typedef scalar_t__ INT ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_FORMAT_LAST ;
 TYPE_1__* pcm_formats ;

int snd_pcm_format_physical_width(snd_pcm_format_t format)
{
 int val;
 if ((INT)format < 0 || (INT)format > (INT)SNDRV_PCM_FORMAT_LAST)
  return -EINVAL;
 if ((val = pcm_formats[(INT)format].phys) == 0)
  return -EINVAL;
 return val;
}
