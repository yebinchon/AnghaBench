
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int device_config; int adc_i2s_format; int (* set_adc_params ) (struct oxygen*,struct snd_pcm_hw_params*) ;} ;
struct oxygen {int mutex; TYPE_1__ model; int reg_lock; scalar_t__ has_ac97_1; } ;


 int CAPTURE_2_FROM_AC97_1 ;
 int OXYGEN_I2S_BITS_MASK ;
 int OXYGEN_I2S_B_FORMAT ;
 int OXYGEN_I2S_FORMAT_MASK ;
 int OXYGEN_I2S_MCLK_MASK ;
 int OXYGEN_I2S_RATE_MASK ;
 int OXYGEN_REC_FORMAT ;
 int OXYGEN_REC_FORMAT_B_MASK ;
 int OXYGEN_REC_FORMAT_B_SHIFT ;
 int PCM_B ;
 int get_mclk (struct oxygen*,int ,struct snd_pcm_hw_params*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oxygen_format (struct snd_pcm_hw_params*) ;
 int oxygen_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int oxygen_i2s_bits (struct snd_pcm_hw_params*) ;
 int oxygen_rate (struct snd_pcm_hw_params*) ;
 int oxygen_write16_masked (struct oxygen*,int ,int,int) ;
 int oxygen_write8_masked (struct oxygen*,int ,int,int ) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct oxygen*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int oxygen_rec_b_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);
 int is_ac97;
 int err;

 err = oxygen_hw_params(substream, hw_params);
 if (err < 0)
  return err;

 is_ac97 = chip->has_ac97_1 &&
  (chip->model.device_config & CAPTURE_2_FROM_AC97_1);

 spin_lock_irq(&chip->reg_lock);
 oxygen_write8_masked(chip, OXYGEN_REC_FORMAT,
        oxygen_format(hw_params) << OXYGEN_REC_FORMAT_B_SHIFT,
        OXYGEN_REC_FORMAT_B_MASK);
 if (!is_ac97)
  oxygen_write16_masked(chip, OXYGEN_I2S_B_FORMAT,
          oxygen_rate(hw_params) |
          chip->model.adc_i2s_format |
          get_mclk(chip, PCM_B, hw_params) |
          oxygen_i2s_bits(hw_params),
          OXYGEN_I2S_RATE_MASK |
          OXYGEN_I2S_FORMAT_MASK |
          OXYGEN_I2S_MCLK_MASK |
          OXYGEN_I2S_BITS_MASK);
 spin_unlock_irq(&chip->reg_lock);

 if (!is_ac97) {
  mutex_lock(&chip->mutex);
  chip->model.set_adc_params(chip, hw_params);
  mutex_unlock(&chip->mutex);
 }
 return 0;
}
