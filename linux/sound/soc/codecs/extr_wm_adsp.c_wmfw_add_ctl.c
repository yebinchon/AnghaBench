
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int put; int get; int max; } ;
struct wm_coeff_ctl {int type; TYPE_2__ bytes_ext; int len; int flags; scalar_t__ name; } ;
struct wm_adsp {int component; } ;
struct TYPE_3__ {int c; } ;
struct snd_kcontrol_new {unsigned long private_value; int access; int put; int get; TYPE_1__ tlv; int iface; int info; scalar_t__ name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;

 int kfree (struct snd_kcontrol_new*) ;
 struct snd_kcontrol_new* kzalloc (int,int ) ;
 int snd_soc_add_component_controls (int ,struct snd_kcontrol_new*,int) ;
 int snd_soc_bytes_tlv_callback ;
 int wm_coeff_get ;
 int wm_coeff_get_acked ;
 int wm_coeff_info ;
 int wm_coeff_put ;
 int wm_coeff_put_acked ;
 int wm_coeff_tlv_get ;
 int wm_coeff_tlv_put ;
 int wmfw_convert_flags (int ,int ) ;

__attribute__((used)) static int wmfw_add_ctl(struct wm_adsp *dsp, struct wm_coeff_ctl *ctl)
{
 struct snd_kcontrol_new *kcontrol;
 int ret;

 if (!ctl || !ctl->name)
  return -EINVAL;

 kcontrol = kzalloc(sizeof(*kcontrol), GFP_KERNEL);
 if (!kcontrol)
  return -ENOMEM;

 kcontrol->name = ctl->name;
 kcontrol->info = wm_coeff_info;
 kcontrol->iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 kcontrol->tlv.c = snd_soc_bytes_tlv_callback;
 kcontrol->private_value = (unsigned long)&ctl->bytes_ext;
 kcontrol->access = wmfw_convert_flags(ctl->flags, ctl->len);

 switch (ctl->type) {
 case 128:
  kcontrol->get = wm_coeff_get_acked;
  kcontrol->put = wm_coeff_put_acked;
  break;
 default:
  if (kcontrol->access & SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK) {
   ctl->bytes_ext.max = ctl->len;
   ctl->bytes_ext.get = wm_coeff_tlv_get;
   ctl->bytes_ext.put = wm_coeff_tlv_put;
  } else {
   kcontrol->get = wm_coeff_get;
   kcontrol->put = wm_coeff_put;
  }
  break;
 }

 ret = snd_soc_add_component_controls(dsp->component, kcontrol, 1);
 if (ret < 0)
  goto err_kcontrol;

 kfree(kcontrol);

 return 0;

err_kcontrol:
 kfree(kcontrol);
 return ret;
}
