
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wcd9335_codec {int tx_port_value; } ;
struct snd_soc_dapm_context {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct wcd9335_codec* dev_get_drvdata (int ) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;

__attribute__((used)) static int slim_tx_mixer_get(struct snd_kcontrol *kc,
        struct snd_ctl_elem_value *ucontrol)
{

 struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kc);
 struct wcd9335_codec *wcd = dev_get_drvdata(dapm->dev);

 ucontrol->value.integer.value[0] = wcd->tx_port_value;

 return 0;
}
