
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ac97_pcm {scalar_t__ stream; TYPE_1__* r; scalar_t__ spdif; } ;
struct TYPE_2__ {size_t* rate_table; } ;


 unsigned char AC97_SPDIF ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned char* rate_cregs ;
 unsigned char*** rate_reg_tables ;

__attribute__((used)) static unsigned char get_slot_reg(struct ac97_pcm *pcm, unsigned short cidx,
      unsigned short slot, int dbl)
{
 if (slot < 3)
  return 0xff;
 if (slot > 11)
  return 0xff;
 if (pcm->spdif)
  return AC97_SPDIF;
 if (pcm->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return rate_reg_tables[dbl][pcm->r[dbl].rate_table[cidx]][slot - 3];
 else
  return rate_cregs[slot - 3];
}
