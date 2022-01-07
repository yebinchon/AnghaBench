
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ playback_fifo_size; scalar_t__ record_fifo_size; int interwave_fifo_reg; TYPE_4__* record_fifo_block; TYPE_3__* playback_fifo_block; } ;
struct TYPE_7__ {int default_voice_address; scalar_t__ memory; int hw_lfo; int sw_lfo; scalar_t__ active_voice; scalar_t__ enh_mode; TYPE_1__* voices; } ;
struct snd_gus_card {int joystick_dac; TYPE_5__ chip; scalar_t__ pnp_flag; int reg_lock; scalar_t__ mix_cntrl_reg; TYPE_2__ gf1; } ;
struct TYPE_9__ {int ptr; } ;
struct TYPE_8__ {int ptr; } ;
struct TYPE_6__ {unsigned int number; } ;


 int GF1PAGE ;
 int GUSP (struct snd_gus_card*,int ) ;
 int MIXCNTRLREG ;
 int SNDRV_GF1_GB_GLOBAL_MODE ;
 int SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL ;
 int SNDRV_GF1_GB_MEMORY_CONTROL ;
 int SNDRV_GF1_GB_RESET ;
 int SNDRV_GF1_GB_VOICES_IRQ ;
 int SNDRV_GF1_GW_FIFO_PLAY_BASE_ADDR ;
 int SNDRV_GF1_GW_FIFO_RECORD_BASE_ADDR ;
 int SNDRV_GF1_GW_FIFO_SIZE ;
 unsigned int SNDRV_GF1_HANDLER_ALL ;
 unsigned int SNDRV_GF1_HANDLER_VOICE ;
 int outb (scalar_t__,int ) ;
 int snd_gf1_clear_regs (struct snd_gus_card*) ;
 int snd_gf1_clear_voices (struct snd_gus_card*,int ,int) ;
 int snd_gf1_delay (struct snd_gus_card*) ;
 int snd_gf1_i_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_i_read8 (struct snd_gus_card*,int ) ;
 int snd_gf1_i_write16 (struct snd_gus_card*,int ,int) ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int) ;
 int snd_gf1_lfo_init (struct snd_gus_card*) ;
 int snd_gf1_look_regs (struct snd_gus_card*) ;
 int snd_gf1_mem_init (struct snd_gus_card*) ;
 int snd_gf1_mem_proc_init (struct snd_gus_card*) ;
 int snd_gf1_poke (struct snd_gus_card*,unsigned int,int ) ;
 int snd_gf1_select_active_voices (struct snd_gus_card*) ;
 int snd_gf1_set_default_handlers (struct snd_gus_card*,unsigned int) ;
 int snd_gf1_timers_init (struct snd_gus_card*) ;
 int snd_gf1_uart_cmd (struct snd_gus_card*,int) ;
 int snd_gus_irq_profile_init (struct snd_gus_card*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

int snd_gf1_start(struct snd_gus_card * gus)
{
 unsigned long flags;
 unsigned int i;

 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 0);
 udelay(160);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 1);
 udelay(160);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL, gus->joystick_dac);

 snd_gf1_set_default_handlers(gus, SNDRV_GF1_HANDLER_ALL);
 for (i = 0; i < 32; i++) {
  gus->gf1.voices[i].number = i;
  snd_gf1_set_default_handlers(gus, SNDRV_GF1_HANDLER_VOICE | i);
 }

 snd_gf1_uart_cmd(gus, 0x03);

 if (gus->gf1.enh_mode) {
  snd_gf1_i_write8(gus, SNDRV_GF1_GB_GLOBAL_MODE, snd_gf1_i_look8(gus, SNDRV_GF1_GB_GLOBAL_MODE) | 0x01);
  snd_gf1_i_write8(gus, SNDRV_GF1_GB_MEMORY_CONTROL, 0x01);
 }
 snd_gf1_clear_regs(gus);
 snd_gf1_select_active_voices(gus);
 snd_gf1_delay(gus);
 gus->gf1.default_voice_address = gus->gf1.memory > 0 ? 0 : 512 - 8;

 if (gus->gf1.enh_mode && gus->gf1.memory) {
  gus->gf1.hw_lfo = 1;
  gus->gf1.default_voice_address += 1024;
 } else {
  gus->gf1.sw_lfo = 1;
 }



 if (gus->gf1.memory > 0)
  for (i = 0; i < 4; i++)
   snd_gf1_poke(gus, gus->gf1.default_voice_address + i, 0);
 snd_gf1_clear_regs(gus);
 snd_gf1_clear_voices(gus, 0, 31);
 snd_gf1_look_regs(gus);
 udelay(160);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 7);
 udelay(160);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 7);
 if (gus->gf1.enh_mode) {
  snd_gf1_i_write8(gus, SNDRV_GF1_GB_GLOBAL_MODE, snd_gf1_i_look8(gus, SNDRV_GF1_GB_GLOBAL_MODE) | 0x01);
  snd_gf1_i_write8(gus, SNDRV_GF1_GB_MEMORY_CONTROL, 0x01);
 }
 while ((snd_gf1_i_read8(gus, SNDRV_GF1_GB_VOICES_IRQ) & 0xc0) != 0xc0);

 spin_lock_irqsave(&gus->reg_lock, flags);
 outb(gus->gf1.active_voice = 0, GUSP(gus, GF1PAGE));
 outb(gus->mix_cntrl_reg, GUSP(gus, MIXCNTRLREG));
 spin_unlock_irqrestore(&gus->reg_lock, flags);

 snd_gf1_timers_init(gus);
 snd_gf1_look_regs(gus);
 snd_gf1_mem_init(gus);
 snd_gf1_mem_proc_init(gus);
 return 0;
}
