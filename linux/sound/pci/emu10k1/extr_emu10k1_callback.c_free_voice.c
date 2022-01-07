
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_voice {size_t ch; TYPE_1__* emu; struct snd_emu10k1* hw; } ;
struct snd_emu10k1 {int * voices; } ;
struct TYPE_2__ {int num_voices; } ;


 int CVCF ;
 int DCYSUSV ;
 int DCYSUSV_CHANNELENABLE_MASK ;
 int IFATN ;
 int VTFT ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,size_t,int) ;
 int snd_emu10k1_voice_free (struct snd_emu10k1*,int *) ;

__attribute__((used)) static void
free_voice(struct snd_emux_voice *vp)
{
 struct snd_emu10k1 *hw;

 hw = vp->hw;




 if (hw && (vp->ch >= 0)) {
  snd_emu10k1_ptr_write(hw, IFATN, vp->ch, 0xff00);
  snd_emu10k1_ptr_write(hw, DCYSUSV, vp->ch, 0x807f | DCYSUSV_CHANNELENABLE_MASK);

  snd_emu10k1_ptr_write(hw, VTFT, vp->ch, 0xffff);
  snd_emu10k1_ptr_write(hw, CVCF, vp->ch, 0xffff);
  snd_emu10k1_voice_free(hw, &hw->voices[vp->ch]);
  vp->emu->num_voices--;
  vp->ch = -1;
 }
}
