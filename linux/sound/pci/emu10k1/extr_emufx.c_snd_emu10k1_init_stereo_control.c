
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int iface; } ;
struct snd_emu10k1_fx8010_control_gpr {int vcount; int count; int* gpr; int* value; int max; int translation; int tlv; scalar_t__ min; TYPE_1__ id; } ;


 int EMU10K1_GPR_TRANSLATION_NONE ;
 int EMU10K1_GPR_TRANSLATION_TABLE100 ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 scalar_t__ high_res_gpr_volume ;
 int snd_emu10k1_db_linear ;
 int snd_emu10k1_db_scale1 ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void
snd_emu10k1_init_stereo_control(struct snd_emu10k1_fx8010_control_gpr *ctl,
    const char *name, int gpr, int defval)
{
 ctl->id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 strcpy(ctl->id.name, name);
 ctl->vcount = ctl->count = 2;
 ctl->gpr[0] = gpr + 0; ctl->value[0] = defval;
 ctl->gpr[1] = gpr + 1; ctl->value[1] = defval;
 if (high_res_gpr_volume) {
  ctl->min = 0;
  ctl->max = 0x7fffffff;
  ctl->tlv = snd_emu10k1_db_linear;
  ctl->translation = EMU10K1_GPR_TRANSLATION_NONE;
 } else {
  ctl->min = 0;
  ctl->max = 100;
  ctl->tlv = snd_emu10k1_db_scale1;
  ctl->translation = EMU10K1_GPR_TRANSLATION_TABLE100;
 }
}
