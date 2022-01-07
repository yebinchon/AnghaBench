
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int period_bytes_max; int buffer_bytes_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; struct esschan* private_data; } ;
struct esschan {int* apu; int list; int mode; struct snd_pcm_substream* substream; scalar_t__ running; scalar_t__* apu_mode; } ;
struct es1968 {int substream_lock; int substream_list; } ;


 int ENOMEM ;
 int ESM_APU_PCM_PLAY ;
 int ESM_MODE_PLAY ;
 int GFP_KERNEL ;
 int calc_available_memory_size (struct es1968*) ;
 struct esschan* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int snd_es1968_alloc_apu_pair (struct es1968*,int ) ;
 int snd_es1968_free_apu_pair (struct es1968*,int) ;
 TYPE_1__ snd_es1968_playback ;
 struct es1968* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_es1968_playback_open(struct snd_pcm_substream *substream)
{
 struct es1968 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct esschan *es;
 int apu1;


 apu1 = snd_es1968_alloc_apu_pair(chip, ESM_APU_PCM_PLAY);
 if (apu1 < 0)
  return apu1;

 es = kzalloc(sizeof(*es), GFP_KERNEL);
 if (!es) {
  snd_es1968_free_apu_pair(chip, apu1);
  return -ENOMEM;
 }

 es->apu[0] = apu1;
 es->apu[1] = apu1 + 1;
 es->apu_mode[0] = 0;
 es->apu_mode[1] = 0;
 es->running = 0;
 es->substream = substream;
 es->mode = ESM_MODE_PLAY;

 runtime->private_data = es;
 runtime->hw = snd_es1968_playback;
 runtime->hw.buffer_bytes_max = runtime->hw.period_bytes_max =
  calc_available_memory_size(chip);

 spin_lock_irq(&chip->substream_lock);
 list_add(&es->list, &chip->substream_list);
 spin_unlock_irq(&chip->substream_lock);

 return 0;
}
