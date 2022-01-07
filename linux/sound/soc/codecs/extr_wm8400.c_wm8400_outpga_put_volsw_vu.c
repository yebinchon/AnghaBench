
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct soc_mixer_control {int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8400_outpga_put_volsw_vu(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int reg = mc->reg;
        int ret;
        u16 val;

        ret = snd_soc_put_volsw(kcontrol, ucontrol);
        if (ret < 0)
                return ret;


        val = snd_soc_component_read32(component, reg);
        return snd_soc_component_write(component, reg, val | 0x0100);
}
