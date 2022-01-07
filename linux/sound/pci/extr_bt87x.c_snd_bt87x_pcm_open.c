
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_bt87x {int opened; struct snd_pcm_substream* substream; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ DEVICE_DIGITAL ;
 int EBUSY ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int snd_bt87x_set_analog_hw (struct snd_bt87x*,struct snd_pcm_runtime*) ;
 int snd_bt87x_set_digital_hw (struct snd_bt87x*,struct snd_pcm_runtime*) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct snd_bt87x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int snd_bt87x_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_bt87x *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 if (test_and_set_bit(0, &chip->opened))
  return -EBUSY;

 if (substream->pcm->device == DEVICE_DIGITAL)
  err = snd_bt87x_set_digital_hw(chip, runtime);
 else
  err = snd_bt87x_set_analog_hw(chip, runtime);
 if (err < 0)
  goto _error;

 err = snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0)
  goto _error;

 chip->substream = substream;
 return 0;

_error:
 clear_bit(0, &chip->opened);
 smp_mb__after_atomic();
 return err;
}
