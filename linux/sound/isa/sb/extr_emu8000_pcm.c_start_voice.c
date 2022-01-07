
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8k_pcm {int* panning; int timer_running; int timer_lock; int timer; int pitch; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_CPF_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_CVCF_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_IFATN_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_PTRX_WRITE (struct snd_emu8000*,int,unsigned int) ;
 int EMU8000_VTFT_WRITE (struct snd_emu8000*,int,int) ;
 int calc_pitch_target (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void start_voice(struct snd_emu8k_pcm *rec, int ch)
{
 unsigned long flags;
 struct snd_emu8000 *hw = rec->emu;
 unsigned int temp, aux;
 int pt = calc_pitch_target(rec->pitch);


 EMU8000_IFATN_WRITE(hw, ch, 0xff00);
 EMU8000_VTFT_WRITE(hw, ch, 0xffff);
 EMU8000_CVCF_WRITE(hw, ch, 0xffff);

 EMU8000_DCYSUSV_WRITE(hw, ch, 0x7f7f);

 temp = 0;
 if (rec->panning[ch] == 0)
  aux = 0xff;
 else
  aux = (-rec->panning[ch]) & 0xff;
 temp = (temp << 8) | (pt << 16) | aux;
 EMU8000_PTRX_WRITE(hw, ch, temp);
 EMU8000_CPF_WRITE(hw, ch, pt << 16);


 spin_lock_irqsave(&rec->timer_lock, flags);
 if (! rec->timer_running) {
  mod_timer(&rec->timer, jiffies + 1);
  rec->timer_running = 1;
 }
 spin_unlock_irqrestore(&rec->timer_lock, flags);
}
