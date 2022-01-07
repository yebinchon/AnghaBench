
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp {int reg_lock; } ;
struct TYPE_2__ {scalar_t__ format; } ;


 int ATI_REG_CMD_INTERLEAVE_IN ;
 int CMD ;
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;
 int atiixp_update (struct atiixp*,int ,int ,int ) ;
 struct atiixp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_atiixp_capture_prepare(struct snd_pcm_substream *substream)
{
 struct atiixp *chip = snd_pcm_substream_chip(substream);

 spin_lock_irq(&chip->reg_lock);
 atiixp_update(chip, CMD, ATI_REG_CMD_INTERLEAVE_IN,
        substream->runtime->format == SNDRV_PCM_FORMAT_S16_LE ?
        ATI_REG_CMD_INTERLEAVE_IN : 0);
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
