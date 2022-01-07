
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ snd_pcm_format_t ;
struct TYPE_3__ {scalar_t__ alsa; int sndif; } ;


 TYPE_1__* ALSA_SNDIF_FORMATS ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;

__attribute__((used)) static int to_sndif_format(snd_pcm_format_t format)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ALSA_SNDIF_FORMATS); i++)
  if (ALSA_SNDIF_FORMATS[i].alsa == format)
   return ALSA_SNDIF_FORMATS[i].sndif;

 return -EINVAL;
}
