
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdmi_codec_priv {int eld; } ;


 int memcpy (int ,int ,int) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct hdmi_codec_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int hdmi_eld_ctl_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);

 memcpy(ucontrol->value.bytes.data, hcp->eld, sizeof(hcp->eld));

 return 0;
}
