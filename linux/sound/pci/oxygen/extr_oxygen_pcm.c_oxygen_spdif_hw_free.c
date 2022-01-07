
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct oxygen {int reg_lock; } ;


 int OXYGEN_SPDIF_CONTROL ;
 int OXYGEN_SPDIF_OUT_ENABLE ;
 int oxygen_clear_bits32 (struct oxygen*,int ,int ) ;
 int oxygen_hw_free (struct snd_pcm_substream*) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int oxygen_spdif_hw_free(struct snd_pcm_substream *substream)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);

 spin_lock_irq(&chip->reg_lock);
 oxygen_clear_bits32(chip, OXYGEN_SPDIF_CONTROL,
       OXYGEN_SPDIF_OUT_ENABLE);
 spin_unlock_irq(&chip->reg_lock);
 return oxygen_hw_free(substream);
}
