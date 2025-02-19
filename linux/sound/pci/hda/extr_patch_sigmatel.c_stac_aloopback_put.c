
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct sigmatel_spec {unsigned int aloopback_mask; unsigned int aloopback; unsigned int aloopback_shift; } ;
struct TYPE_6__ {int afg; } ;
struct hda_codec {TYPE_3__ core; struct sigmatel_spec* spec; } ;


 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int,int) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int,unsigned int) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int stac_aloopback_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct sigmatel_spec *spec = codec->spec;
 unsigned int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 unsigned int dac_mode;
 unsigned int val, idx_val;

 idx_val = spec->aloopback_mask << idx;
 if (ucontrol->value.integer.value[0])
  val = spec->aloopback | idx_val;
 else
  val = spec->aloopback & ~idx_val;
 if (spec->aloopback == val)
  return 0;

 spec->aloopback = val;




 dac_mode = snd_hda_codec_read(codec, codec->core.afg, 0,
          kcontrol->private_value & 0xFFFF, 0x0);
 dac_mode >>= spec->aloopback_shift;

 if (spec->aloopback & idx_val) {
  snd_hda_power_up(codec);
  dac_mode |= idx_val;
 } else {
  snd_hda_power_down(codec);
  dac_mode &= ~idx_val;
 }

 snd_hda_codec_write_cache(codec, codec->core.afg, 0,
  kcontrol->private_value >> 16, dac_mode);

 return 1;
}
