
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int iface; } ;
struct snd_emu10k1_fx8010_control_gpr {int vcount; int count; int* value; int max; int translation; scalar_t__ min; scalar_t__* gpr; TYPE_1__ id; } ;


 int EMU10K1_GPR_TRANSLATION_ONOFF ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void
snd_emu10k1_init_mono_onoff_control(struct snd_emu10k1_fx8010_control_gpr *ctl,
        const char *name, int gpr, int defval)
{
 ctl->id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 strcpy(ctl->id.name, name);
 ctl->vcount = ctl->count = 1;
 ctl->gpr[0] = gpr + 0; ctl->value[0] = defval;
 ctl->min = 0;
 ctl->max = 1;
 ctl->translation = EMU10K1_GPR_TRANSLATION_ONOFF;
}
