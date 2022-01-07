
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {scalar_t__ private_value; } ;
struct hda_gen_spec {scalar_t__ hp_mic_pin; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int name ;
typedef scalar_t__ hda_nid_t ;


 int ENOMEM ;
 scalar_t__ INPUT_PIN_ATTR_INT ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int get_in_jack_num_items (struct hda_codec*,scalar_t__) ;
 int get_jack_mode_name (struct hda_codec*,scalar_t__,char*,int) ;
 int in_jack_mode_enum ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,scalar_t__) ;
 struct snd_kcontrol_new* snd_hda_gen_add_kctl (struct hda_gen_spec*,char*,int *) ;
 scalar_t__ snd_hda_get_input_pin_attr (unsigned int) ;

__attribute__((used)) static int create_in_jack_mode(struct hda_codec *codec, hda_nid_t pin)
{
 struct hda_gen_spec *spec = codec->spec;
 struct snd_kcontrol_new *knew;
 char name[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
 unsigned int defcfg;

 if (pin == spec->hp_mic_pin)
  return 0;


 defcfg = snd_hda_codec_get_pincfg(codec, pin);
 if (snd_hda_get_input_pin_attr(defcfg) == INPUT_PIN_ATTR_INT)
  return 0;


 if (get_in_jack_num_items(codec, pin) <= 1)
  return 0;

 get_jack_mode_name(codec, pin, name, sizeof(name));
 knew = snd_hda_gen_add_kctl(spec, name, &in_jack_mode_enum);
 if (!knew)
  return -ENOMEM;
 knew->private_value = pin;
 return 0;
}
