
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int sndif; int alsa; } ;


 TYPE_1__* ALSA_SNDIF_FORMATS ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int BIT_ULL (int ) ;
 int pcm_format_to_bits (int ) ;

__attribute__((used)) static u64 to_sndif_formats_mask(u64 alsa_formats)
{
 u64 mask;
 int i;

 mask = 0;
 for (i = 0; i < ARRAY_SIZE(ALSA_SNDIF_FORMATS); i++)
  if (pcm_format_to_bits(ALSA_SNDIF_FORMATS[i].alsa) & alsa_formats)
   mask |= BIT_ULL(ALSA_SNDIF_FORMATS[i].sndif);

 return mask;
}
