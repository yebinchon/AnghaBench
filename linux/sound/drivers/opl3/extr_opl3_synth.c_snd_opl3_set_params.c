
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int rhythm; int (* command ) (struct snd_opl3*,int,unsigned char) ;} ;
struct snd_dm_fm_params {scalar_t__ hihat; scalar_t__ cymbal; scalar_t__ tomtom; scalar_t__ snare; scalar_t__ bass; scalar_t__ rhythm; scalar_t__ vib_depth; scalar_t__ am_depth; scalar_t__ kbd_split; } ;


 unsigned char OPL3_BASSDRUM_ON ;
 unsigned char OPL3_CYMBAL_ON ;
 unsigned char OPL3_HIHAT_ON ;
 unsigned char OPL3_KEYBOARD_SPLIT ;
 int OPL3_LEFT ;
 unsigned char OPL3_PERCUSSION_ENABLE ;
 int OPL3_REG_KBD_SPLIT ;
 int OPL3_REG_PERCUSSION ;
 unsigned char OPL3_SNAREDRUM_ON ;
 unsigned char OPL3_TOMTOM_ON ;
 unsigned char OPL3_TREMOLO_DEPTH ;
 unsigned char OPL3_VIBRATO_DEPTH ;
 int stub1 (struct snd_opl3*,int,unsigned char) ;
 int stub2 (struct snd_opl3*,int,unsigned char) ;

__attribute__((used)) static int snd_opl3_set_params(struct snd_opl3 * opl3, struct snd_dm_fm_params * params)
{
 unsigned char reg_val;

 reg_val = 0x00;

 if (params->kbd_split)
  reg_val |= OPL3_KEYBOARD_SPLIT;
 opl3->command(opl3, OPL3_LEFT | OPL3_REG_KBD_SPLIT, reg_val);

 reg_val = 0x00;

 if (params->am_depth)
  reg_val |= OPL3_TREMOLO_DEPTH;

 if (params->vib_depth)
  reg_val |= OPL3_VIBRATO_DEPTH;

 if (params->rhythm) {
  reg_val |= OPL3_PERCUSSION_ENABLE;
  opl3->rhythm = 1;
 } else {
  opl3->rhythm = 0;
 }

 if (params->bass)
  reg_val |= OPL3_BASSDRUM_ON;
 if (params->snare)
  reg_val |= OPL3_SNAREDRUM_ON;
 if (params->tomtom)
  reg_val |= OPL3_TOMTOM_ON;
 if (params->cymbal)
  reg_val |= OPL3_CYMBAL_ON;
 if (params->hihat)
  reg_val |= OPL3_HIHAT_ON;

 opl3->command(opl3, OPL3_LEFT | OPL3_REG_PERCUSSION, reg_val);
 return 0;
}
