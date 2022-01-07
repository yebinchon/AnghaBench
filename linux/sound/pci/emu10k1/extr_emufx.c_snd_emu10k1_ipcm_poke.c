
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1_fx8010_pcm_rec {size_t substream; int channels; int * etram; int gpr_running; int gpr_trigger; int gpr_ptr; int gpr_tmpcount; int gpr_count; int gpr_size; int buffer_size; int tram_start; } ;
struct snd_emu10k1_fx8010_pcm {int valid; unsigned int channels; int * etram; int gpr_running; int gpr_trigger; int gpr_ptr; int gpr_tmpcount; int gpr_count; int gpr_size; int buffer_size; int tram_start; scalar_t__ opened; } ;
struct TYPE_2__ {int lock; struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; int reg_lock; } ;


 int EBUSY ;
 int EINVAL ;
 size_t EMU10K1_FX8010_PCM_COUNT ;
 size_t array_index_nospec (size_t,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_emu10k1_ipcm_poke(struct snd_emu10k1 *emu,
     struct snd_emu10k1_fx8010_pcm_rec *ipcm)
{
 unsigned int i;
 int err = 0;
 struct snd_emu10k1_fx8010_pcm *pcm;

 if (ipcm->substream >= EMU10K1_FX8010_PCM_COUNT)
  return -EINVAL;
 ipcm->substream = array_index_nospec(ipcm->substream,
          EMU10K1_FX8010_PCM_COUNT);
 if (ipcm->channels > 32)
  return -EINVAL;
 pcm = &emu->fx8010.pcm[ipcm->substream];
 mutex_lock(&emu->fx8010.lock);
 spin_lock_irq(&emu->reg_lock);
 if (pcm->opened) {
  err = -EBUSY;
  goto __error;
 }
 if (ipcm->channels == 0) {
  pcm->valid = 0;
 } else {

  if (ipcm->channels != 2) {
   err = -EINVAL;
   goto __error;
  }
  pcm->valid = 1;
  pcm->opened = 0;
  pcm->channels = ipcm->channels;
  pcm->tram_start = ipcm->tram_start;
  pcm->buffer_size = ipcm->buffer_size;
  pcm->gpr_size = ipcm->gpr_size;
  pcm->gpr_count = ipcm->gpr_count;
  pcm->gpr_tmpcount = ipcm->gpr_tmpcount;
  pcm->gpr_ptr = ipcm->gpr_ptr;
  pcm->gpr_trigger = ipcm->gpr_trigger;
  pcm->gpr_running = ipcm->gpr_running;
  for (i = 0; i < pcm->channels; i++)
   pcm->etram[i] = ipcm->etram[i];
 }
      __error:
 spin_unlock_irq(&emu->reg_lock);
 mutex_unlock(&emu->fx8010.lock);
 return err;
}
