
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cmds; } ;
struct snd_pmac {TYPE_2__ extra_dma; int playback; } ;
struct TYPE_3__ {int command; } ;


 int DBDMA_STOP ;
 int cpu_to_le16 (int ) ;
 int snd_pmac_dma_stop (int *) ;
 int snd_pmac_pcm_set_format (struct snd_pmac*) ;

void snd_pmac_beep_dma_stop(struct snd_pmac *chip)
{
 snd_pmac_dma_stop(&chip->playback);
 chip->extra_dma.cmds->command = cpu_to_le16(DBDMA_STOP);
 snd_pmac_pcm_set_format(chip);
}
