
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3_drum_voice {size_t voice; size_t op; int wave_select; int feedback_connection; int sustain_release; int attack_decay; int ksl_level; int am_vib; } ;
struct snd_opl3 {int (* command ) (struct snd_opl3*,unsigned short,int ) ;} ;


 unsigned char OPL3_LEFT ;
 unsigned char OPL3_REG_AM_VIB ;
 unsigned char OPL3_REG_ATTACK_DECAY ;
 unsigned char OPL3_REG_FEEDBACK_CONNECTION ;
 unsigned char OPL3_REG_KSL_LEVEL ;
 unsigned char OPL3_REG_SUSTAIN_RELEASE ;
 unsigned char OPL3_REG_WAVE_SELECT ;
 unsigned char** snd_opl3_regmap ;
 int stub1 (struct snd_opl3*,unsigned short,int ) ;
 int stub2 (struct snd_opl3*,unsigned short,int ) ;
 int stub3 (struct snd_opl3*,unsigned short,int ) ;
 int stub4 (struct snd_opl3*,unsigned short,int ) ;
 int stub5 (struct snd_opl3*,unsigned short,int ) ;
 int stub6 (struct snd_opl3*,unsigned short,int ) ;

__attribute__((used)) static void snd_opl3_drum_voice_set(struct snd_opl3 *opl3,
        struct snd_opl3_drum_voice *data)
{
 unsigned char op_offset = snd_opl3_regmap[data->voice][data->op];
 unsigned char voice_offset = data->voice;
 unsigned short opl3_reg;


 opl3_reg = OPL3_LEFT | (OPL3_REG_AM_VIB + op_offset);
 opl3->command(opl3, opl3_reg, data->am_vib);


 opl3_reg = OPL3_LEFT | (OPL3_REG_KSL_LEVEL + op_offset);
 opl3->command(opl3, opl3_reg, data->ksl_level);


 opl3_reg = OPL3_LEFT | (OPL3_REG_ATTACK_DECAY + op_offset);
 opl3->command(opl3, opl3_reg, data->attack_decay);


 opl3_reg = OPL3_LEFT | (OPL3_REG_SUSTAIN_RELEASE + op_offset);
 opl3->command(opl3, opl3_reg, data->sustain_release);


 opl3_reg = OPL3_LEFT | (OPL3_REG_FEEDBACK_CONNECTION + voice_offset);
 opl3->command(opl3, opl3_reg, data->feedback_connection);


 opl3_reg = OPL3_LEFT | (OPL3_REG_WAVE_SELECT + op_offset);
 opl3->command(opl3, opl3_reg, data->wave_select);
}
