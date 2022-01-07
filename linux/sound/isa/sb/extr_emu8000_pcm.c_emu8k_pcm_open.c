
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int buffer_bytes_max; int period_bytes_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; struct snd_emu8k_pcm* private_data; } ;
struct snd_emu8k_pcm {int timer; int timer_lock; struct snd_pcm_substream* substream; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int mem_size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int LOOP_BLANK_SIZE ;
 int SNDRV_PCM_HW_PARAM_PERIOD_TIME ;
 int UINT_MAX ;
 TYPE_1__ emu8k_pcm_hw ;
 int emu8k_pcm_timer_func ;
 struct snd_emu8k_pcm* kzalloc (int,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int ) ;
 struct snd_emu8000* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int emu8k_pcm_open(struct snd_pcm_substream *subs)
{
 struct snd_emu8000 *emu = snd_pcm_substream_chip(subs);
 struct snd_emu8k_pcm *rec;
 struct snd_pcm_runtime *runtime = subs->runtime;

 rec = kzalloc(sizeof(*rec), GFP_KERNEL);
 if (! rec)
  return -ENOMEM;

 rec->emu = emu;
 rec->substream = subs;
 runtime->private_data = rec;

 spin_lock_init(&rec->timer_lock);
 timer_setup(&rec->timer, emu8k_pcm_timer_func, 0);

 runtime->hw = emu8k_pcm_hw;
 runtime->hw.buffer_bytes_max = emu->mem_size - LOOP_BLANK_SIZE * 3;
 runtime->hw.period_bytes_max = runtime->hw.buffer_bytes_max / 2;


 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_PERIOD_TIME,
         (1000000 + HZ - 1) / HZ, UINT_MAX);

 return 0;
}
