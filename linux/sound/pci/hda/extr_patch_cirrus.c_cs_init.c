
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {scalar_t__ vendor_nid; scalar_t__ gpio_data; scalar_t__ gpio_dir; scalar_t__ gpio_mask; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int AC_VERB_SET_GPIO_DIRECTION ;
 int AC_VERB_SET_GPIO_MASK ;
 scalar_t__ CS4208_VENDOR_NID ;
 scalar_t__ CS420X_VENDOR_NID ;
 int cs4208_coef_init_verbs ;
 int cs_coef_init_verbs ;
 int cs_errata_init_verbs ;
 int init_digital_coef (struct hda_codec*) ;
 int init_input_coef (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,scalar_t__) ;
 int snd_hda_gen_init (struct hda_codec*) ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static int cs_init(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;

 if (spec->vendor_nid == CS420X_VENDOR_NID) {

  snd_hda_sequence_write(codec, cs_errata_init_verbs);
  snd_hda_sequence_write(codec, cs_coef_init_verbs);
 } else if (spec->vendor_nid == CS4208_VENDOR_NID) {
  snd_hda_sequence_write(codec, cs4208_coef_init_verbs);
 }

 snd_hda_gen_init(codec);

 if (spec->gpio_mask) {
  snd_hda_codec_write(codec, 0x01, 0, AC_VERB_SET_GPIO_MASK,
        spec->gpio_mask);
  snd_hda_codec_write(codec, 0x01, 0, AC_VERB_SET_GPIO_DIRECTION,
        spec->gpio_dir);
  snd_hda_codec_write(codec, 0x01, 0, AC_VERB_SET_GPIO_DATA,
        spec->gpio_data);
 }

 if (spec->vendor_nid == CS420X_VENDOR_NID) {
  init_input_coef(codec);
  init_digital_coef(codec);
 }

 return 0;
}
