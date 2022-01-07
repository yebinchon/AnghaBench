
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {scalar_t__ fm_mode; int (* command ) (struct snd_opl3*,unsigned short,unsigned char) ;} ;
struct snd_dm_fm_note {unsigned char voice; int fnum; int octave; scalar_t__ key_on; } ;


 int EINVAL ;
 unsigned char MAX_OPL2_VOICES ;
 unsigned char MAX_OPL3_VOICES ;
 int OPL3_BLOCKNUM_MASK ;
 unsigned char OPL3_FNUM_HIGH_MASK ;
 unsigned char OPL3_KEYON_BIT ;
 unsigned short OPL3_LEFT ;
 unsigned char OPL3_REG_FNUM_LOW ;
 unsigned char OPL3_REG_KEYON_BLOCK ;
 unsigned short OPL3_RIGHT ;
 scalar_t__ SNDRV_DM_FM_MODE_OPL3 ;
 int stub1 (struct snd_opl3*,unsigned short,unsigned char) ;
 int stub2 (struct snd_opl3*,unsigned short,unsigned char) ;

__attribute__((used)) static int snd_opl3_play_note(struct snd_opl3 * opl3, struct snd_dm_fm_note * note)
{
 unsigned short reg_side;
 unsigned char voice_offset;

 unsigned short opl3_reg;
 unsigned char reg_val;



 if (note->voice >= ((opl3->fm_mode == SNDRV_DM_FM_MODE_OPL3) ?
       MAX_OPL3_VOICES : MAX_OPL2_VOICES))
  return -EINVAL;


 if (note->voice < MAX_OPL2_VOICES) {

  reg_side = OPL3_LEFT;
  voice_offset = note->voice;
 } else {

  reg_side = OPL3_RIGHT;
  voice_offset = note->voice - MAX_OPL2_VOICES;
 }


 reg_val = (unsigned char) note->fnum;
 opl3_reg = reg_side | (OPL3_REG_FNUM_LOW + voice_offset);
 opl3->command(opl3, opl3_reg, reg_val);

 reg_val = 0x00;

 if (note->key_on)
  reg_val |= OPL3_KEYON_BIT;

 reg_val |= (note->octave << 2) & OPL3_BLOCKNUM_MASK;

 reg_val |= (unsigned char) (note->fnum >> 8) & OPL3_FNUM_HIGH_MASK;


 opl3_reg = reg_side | (OPL3_REG_KEYON_BLOCK + voice_offset);
 opl3->command(opl3, opl3_reg, reg_val);

 return 0;
}
