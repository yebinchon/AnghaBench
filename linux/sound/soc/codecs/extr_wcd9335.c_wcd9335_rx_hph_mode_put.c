
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wcd9335_codec {scalar_t__ hph_mode; int dev; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ CLS_H_HIFI ;
 int dev_err (int ,char*) ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int wcd9335_rx_hph_mode_put(struct snd_kcontrol *kc,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kc);
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);
 u32 mode_val;

 mode_val = ucontrol->value.enumerated.item[0];

 if (mode_val == 0) {
  dev_err(wcd->dev, "Invalid HPH Mode, default to ClSH HiFi\n");
  mode_val = CLS_H_HIFI;
 }
 wcd->hph_mode = mode_val;

 return 0;
}
