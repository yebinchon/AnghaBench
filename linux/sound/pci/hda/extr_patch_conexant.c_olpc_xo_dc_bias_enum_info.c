
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int olpc_xo_dc_bias ;
 int snd_hda_input_mux_info (int *,struct snd_ctl_elem_info*) ;

__attribute__((used)) static int olpc_xo_dc_bias_enum_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 return snd_hda_input_mux_info(&olpc_xo_dc_bias, uinfo);
}
