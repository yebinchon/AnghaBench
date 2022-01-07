
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_midi_channel {scalar_t__* control; } ;
struct TYPE_5__ {unsigned int moddelay; unsigned int modatkhld; unsigned int moddcysus; unsigned int voldelay; unsigned int volatkhld; unsigned int pefe; unsigned int lfo1delay; unsigned int lfo2delay; unsigned int tremfrq; unsigned int reverb; unsigned int chorus; unsigned int filterQ; } ;
struct TYPE_6__ {unsigned int start; unsigned int end; unsigned int loopstart; unsigned int loopend; int sample_mode; TYPE_2__ parm; } ;
struct snd_emux_voice {int ch; unsigned int apitch; unsigned int ftarget; scalar_t__ vtarget; TYPE_3__ reg; struct snd_midi_channel* chan; scalar_t__ avol; scalar_t__ acutoff; scalar_t__ block; struct snd_emu10k1* hw; } ;
struct snd_emu10k1_memblk {int map_locked; } ;
struct TYPE_4__ {unsigned int addr; } ;
struct snd_emu10k1 {unsigned int address_mode; TYPE_1__ silent_page; scalar_t__ audigy; } ;


 int ATKHLDM ;
 int ATKHLDV ;
 int A_FXRT1 ;
 int CCCA ;
 unsigned int CCCA_8BITSELECT ;
 unsigned int CCCA_INTERPROM_0 ;
 int CCR ;
 int CDE ;
 int CDF ;
 int CPF ;
 int CVCF ;
 int DCYSUSM ;
 int DCYSUSV ;
 int DSL ;
 int EINVAL ;
 int ENOMEM ;
 int ENVVAL ;
 int ENVVOL ;
 int FXBUS_MIDI_CHORUS ;
 int FXBUS_MIDI_LEFT ;
 int FXBUS_MIDI_REVERB ;
 int FXBUS_MIDI_RIGHT ;
 int FXRT ;
 int IFATN ;
 int IP ;
 int LFOVAL1 ;
 int LFOVAL2 ;
 int LIMITMAX (unsigned int,int) ;
 int MAPA ;
 int MAPB ;
 unsigned int MAP_PTI_MASK0 ;
 unsigned int MAP_PTI_MASK1 ;
 size_t MIDI_CTL_E1_REVERB_DEPTH ;
 size_t MIDI_CTL_E3_CHORUS_DEPTH ;
 int PEFE ;
 int PSST ;
 int PTRX ;
 int SNDRV_SFNT_SAMPLE_8BITS ;
 int TREMFRQ ;
 int VTFT ;
 int Z1 ;
 int Z2 ;
 unsigned int hw_address_mode ;
 int set_fm2frq2 (struct snd_emu10k1*,struct snd_emux_voice*) ;
 int set_fmmod (struct snd_emu10k1*,struct snd_emux_voice*) ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ snd_emu10k1_memblk_map (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ;
 int snd_emu10k1_memblk_offset (struct snd_emu10k1_memblk*) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int,unsigned int) ;

__attribute__((used)) static int
start_voice(struct snd_emux_voice *vp)
{
 unsigned int temp;
 int ch;
 unsigned int addr, mapped_offset;
 struct snd_midi_channel *chan;
 struct snd_emu10k1 *hw;
 struct snd_emu10k1_memblk *emem;

 hw = vp->hw;
 ch = vp->ch;
 if (snd_BUG_ON(ch < 0))
  return -EINVAL;
 chan = vp->chan;

 emem = (struct snd_emu10k1_memblk *)vp->block;
 if (emem == ((void*)0))
  return -EINVAL;
 emem->map_locked++;
 if (snd_emu10k1_memblk_map(hw, emem) < 0) {

  return -ENOMEM;
 }
 mapped_offset = snd_emu10k1_memblk_offset(emem) >> 1;
 vp->reg.start += mapped_offset;
 vp->reg.end += mapped_offset;
 vp->reg.loopstart += mapped_offset;
 vp->reg.loopend += mapped_offset;



 if (hw->audigy) {
  temp = FXBUS_MIDI_LEFT | (FXBUS_MIDI_RIGHT << 8) |
   (FXBUS_MIDI_REVERB << 16) | (FXBUS_MIDI_CHORUS << 24);
  snd_emu10k1_ptr_write(hw, A_FXRT1, ch, temp);
 } else {
  temp = (FXBUS_MIDI_LEFT << 16) | (FXBUS_MIDI_RIGHT << 20) |
   (FXBUS_MIDI_REVERB << 24) | (FXBUS_MIDI_CHORUS << 28);
  snd_emu10k1_ptr_write(hw, FXRT, ch, temp);
 }


 snd_emu10k1_ptr_write(hw, DCYSUSV, ch, 0x0000);
 snd_emu10k1_ptr_write(hw, VTFT, ch, 0x0000FFFF);
 snd_emu10k1_ptr_write(hw, CVCF, ch, 0x0000FFFF);
 snd_emu10k1_ptr_write(hw, PTRX, ch, 0);
 snd_emu10k1_ptr_write(hw, CPF, ch, 0);


 snd_emu10k1_ptr_write(hw, IP, vp->ch, vp->apitch);


 snd_emu10k1_ptr_write(hw, ENVVAL, ch, vp->reg.parm.moddelay);
 snd_emu10k1_ptr_write(hw, ATKHLDM, ch, vp->reg.parm.modatkhld);
 snd_emu10k1_ptr_write(hw, DCYSUSM, ch, vp->reg.parm.moddcysus);
 snd_emu10k1_ptr_write(hw, ENVVOL, ch, vp->reg.parm.voldelay);
 snd_emu10k1_ptr_write(hw, ATKHLDV, ch, vp->reg.parm.volatkhld);




 temp = (unsigned int)vp->acutoff << 8 | (unsigned char)vp->avol;
 snd_emu10k1_ptr_write(hw, IFATN, vp->ch, temp);


 snd_emu10k1_ptr_write(hw, PEFE, ch, vp->reg.parm.pefe);


 snd_emu10k1_ptr_write(hw, LFOVAL1, ch, vp->reg.parm.lfo1delay);
 snd_emu10k1_ptr_write(hw, LFOVAL2, ch, vp->reg.parm.lfo2delay);


 set_fmmod(hw, vp);

 snd_emu10k1_ptr_write(hw, TREMFRQ, vp->ch, vp->reg.parm.tremfrq);

 set_fm2frq2(hw, vp);


 temp = vp->reg.parm.reverb;
 temp += (int)vp->chan->control[MIDI_CTL_E1_REVERB_DEPTH] * 9 / 10;
 LIMITMAX(temp, 255);
 addr = vp->reg.loopstart;
 snd_emu10k1_ptr_write(hw, PSST, vp->ch, (temp << 24) | addr);


 addr = vp->reg.loopend;
 temp = vp->reg.parm.chorus;
 temp += (int)chan->control[MIDI_CTL_E3_CHORUS_DEPTH] * 9 / 10;
 LIMITMAX(temp, 255);
 temp = (temp <<24) | addr;
 snd_emu10k1_ptr_write(hw, DSL, ch, temp);


 snd_emu10k1_ptr_write(hw, Z1, ch, 0);
 snd_emu10k1_ptr_write(hw, Z2, ch, 0);


 temp = (hw->silent_page.addr << hw->address_mode) | (hw->address_mode ? MAP_PTI_MASK1 : MAP_PTI_MASK0);
 snd_emu10k1_ptr_write(hw, MAPA, ch, temp);
 snd_emu10k1_ptr_write(hw, MAPB, ch, temp);
 addr = vp->reg.start;
 temp = vp->reg.parm.filterQ;
 temp = (temp<<28) | addr;
 if (vp->apitch < 0xe400)
  temp |= CCCA_INTERPROM_0;
 else {
  unsigned int shift = (vp->apitch - 0xe000) >> 10;
  temp |= shift << 25;
 }
 if (vp->reg.sample_mode & SNDRV_SFNT_SAMPLE_8BITS)
  temp |= CCCA_8BITSELECT;
 snd_emu10k1_ptr_write(hw, CCCA, ch, temp);


 temp = (unsigned int)vp->vtarget << 16;
 snd_emu10k1_ptr_write(hw, VTFT, ch, temp | vp->ftarget);
 snd_emu10k1_ptr_write(hw, CVCF, ch, temp | 0xff00);
 return 0;
}
