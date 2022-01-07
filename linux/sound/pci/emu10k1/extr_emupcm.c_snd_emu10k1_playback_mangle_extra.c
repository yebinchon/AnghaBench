
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_runtime {unsigned int hw_ptr_interrupt; unsigned int period_size; TYPE_1__* status; } ;
struct snd_emu10k1_pcm {unsigned int ccca_start_addr; TYPE_2__* extra; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {unsigned int hw_ptr; } ;


 int CCCA ;
 unsigned int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,unsigned int) ;

__attribute__((used)) static inline void snd_emu10k1_playback_mangle_extra(struct snd_emu10k1 *emu,
  struct snd_emu10k1_pcm *epcm,
  struct snd_pcm_substream *substream,
  struct snd_pcm_runtime *runtime)
{
 unsigned int ptr, period_pos;



 period_pos = runtime->status->hw_ptr - runtime->hw_ptr_interrupt;
 period_pos %= runtime->period_size;
 ptr = snd_emu10k1_ptr_read(emu, CCCA, epcm->extra->number);
 ptr &= ~0x00ffffff;
 ptr |= epcm->ccca_start_addr + period_pos;
 snd_emu10k1_ptr_write(emu, CCCA, epcm->extra->number, ptr);
}
