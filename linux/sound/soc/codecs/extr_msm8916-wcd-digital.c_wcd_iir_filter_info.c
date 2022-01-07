
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_bytes_ext {int max; } ;
struct wcd_iir_filter_ctl {struct soc_bytes_ext bytes_ext; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int wcd_iir_filter_info(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_info *ucontrol)
{
 struct wcd_iir_filter_ctl *ctl =
  (struct wcd_iir_filter_ctl *)kcontrol->private_value;
 struct soc_bytes_ext *params = &ctl->bytes_ext;

 ucontrol->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 ucontrol->count = params->max;

 return 0;
}
