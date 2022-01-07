
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {int control_mask; int rate_index; scalar_t__ format; int (* set_format ) (struct snd_pmac*) ;TYPE_1__* awacs; } ;
struct TYPE_2__ {int byteswap; int control; } ;


 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;
 int out_le32 (int *,int) ;
 int stub1 (struct snd_pmac*) ;

__attribute__((used)) static void snd_pmac_pcm_set_format(struct snd_pmac *chip)
{

 out_le32(&chip->awacs->control, chip->control_mask | (chip->rate_index << 8));
 out_le32(&chip->awacs->byteswap, chip->format == SNDRV_PCM_FORMAT_S16_LE ? 1 : 0);
 if (chip->set_format)
  chip->set_format(chip);
}
