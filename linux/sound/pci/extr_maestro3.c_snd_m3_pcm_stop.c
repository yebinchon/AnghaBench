
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int stream; } ;
struct snd_m3 {int dacs_active; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct m3_dma {TYPE_1__ inst; } ;


 scalar_t__ CDATA_INSTANCE_READY ;
 int EINVAL ;
 scalar_t__ KDATA_ADC1_REQUEST ;
 scalar_t__ KDATA_MIXER_TASK_NUMBER ;
 int MEMTYPE_INTERNAL_DATA ;


 int snd_m3_assp_write (struct snd_m3*,int ,scalar_t__,int ) ;
 int snd_m3_dec_timer_users (struct snd_m3*) ;

__attribute__((used)) static int snd_m3_pcm_stop(struct snd_m3 *chip, struct m3_dma *s,
      struct snd_pcm_substream *subs)
{
 if (! s || ! subs)
  return -EINVAL;

 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + CDATA_INSTANCE_READY, 0);
 snd_m3_dec_timer_users(chip);
 switch (subs->stream) {
 case 128:
  chip->dacs_active--;
  snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
      KDATA_MIXER_TASK_NUMBER,
      chip->dacs_active);
  break;
 case 129:
  snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
      KDATA_ADC1_REQUEST, 0);
  break;
 }
 return 0;
}
