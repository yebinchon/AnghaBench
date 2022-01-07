
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_runtime {int rate; } ;
struct esschan {int dma_size; int wav_shift; int* apu; int fmt; TYPE_4__* memory; TYPE_2__* mixbuf; } ;
struct es1968 {int reg_lock; scalar_t__ io_port; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ buf; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ buf; } ;


 int ESM_APU_INPUTMIXER ;
 int ESM_APU_SRCONVERTOR ;
 int ESM_HIRQ_DSIE ;
 int ESM_MIXBUF_SIZE ;
 scalar_t__ ESM_PORT_HOST_IRQ ;
 int ESS_FMT_STEREO ;
 int init_capture_apu (struct es1968*,struct esschan*,int,scalar_t__,int,int ,int) ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int snd_es1968_apu_set_freq (struct es1968*,int,int) ;
 int snd_es1968_compute_rate (struct es1968*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_es1968_capture_setup(struct es1968 *chip, struct esschan *es,
         struct snd_pcm_runtime *runtime)
{
 int size;
 u32 freq;
 unsigned long flags;

 size = es->dma_size >> es->wav_shift;
 init_capture_apu(chip, es, 2,
    es->mixbuf->buf.addr, ESM_MIXBUF_SIZE/4,
    ESM_APU_INPUTMIXER, 0x14);

 init_capture_apu(chip, es, 0, es->memory->buf.addr, size,
    ESM_APU_SRCONVERTOR, es->apu[2]);
 if (es->fmt & ESS_FMT_STEREO) {

  init_capture_apu(chip, es, 3,
     es->mixbuf->buf.addr + ESM_MIXBUF_SIZE/2,
     ESM_MIXBUF_SIZE/4,
     ESM_APU_INPUTMIXER, 0x15);

  init_capture_apu(chip, es, 1,
     es->memory->buf.addr + size*2, size,
     ESM_APU_SRCONVERTOR, es->apu[3]);
 }

 freq = runtime->rate;

 if (freq > 47999)
  freq = 47999;
 if (freq < 4000)
  freq = 4000;

 freq = snd_es1968_compute_rate(chip, freq);


 snd_es1968_apu_set_freq(chip, es->apu[0], freq);
 snd_es1968_apu_set_freq(chip, es->apu[1], freq);


 freq = 0x10000;
 snd_es1968_apu_set_freq(chip, es->apu[2], freq);
 snd_es1968_apu_set_freq(chip, es->apu[3], freq);

 spin_lock_irqsave(&chip->reg_lock, flags);

 outw(1, chip->io_port + 0x04);

 outw(inw(chip->io_port + ESM_PORT_HOST_IRQ) | ESM_HIRQ_DSIE, chip->io_port + ESM_PORT_HOST_IRQ);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
