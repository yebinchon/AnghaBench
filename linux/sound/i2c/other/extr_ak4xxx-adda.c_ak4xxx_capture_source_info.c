
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct snd_akm4xxx {TYPE_1__* adc_info; } ;
struct TYPE_2__ {int input_names; } ;


 int AK_GET_SHIFT (int ) ;
 int EINVAL ;
 unsigned int ak4xxx_capture_num_inputs (struct snd_akm4xxx*,int) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,unsigned int,int ) ;
 struct snd_akm4xxx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ak4xxx_capture_source_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct snd_akm4xxx *ak = snd_kcontrol_chip(kcontrol);
 int mixer_ch = AK_GET_SHIFT(kcontrol->private_value);
 unsigned int num_names;

 num_names = ak4xxx_capture_num_inputs(ak, mixer_ch);
 if (!num_names)
  return -EINVAL;
 return snd_ctl_enum_info(uinfo, 1, num_names,
     ak->adc_info[mixer_ch].input_names);
}
