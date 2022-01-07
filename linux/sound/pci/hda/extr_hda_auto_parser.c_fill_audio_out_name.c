
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int hp_outs; int hp_pins; int speaker_outs; int speaker_pins; int line_outs; int line_out_pins; } ;
typedef int hda_nid_t ;


 int INPUT_PIN_ATTR_INT ;
 char* check_output_pfx (struct hda_codec*,int ) ;
 char* check_output_sfx (int ,int ,int ,int*) ;
 int get_hp_label_index (struct hda_codec*,int ,int ,int ) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_get_input_pin_attr (unsigned int) ;
 int snprintf (char*,int,char*,char const*,char const*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int fill_audio_out_name(struct hda_codec *codec, hda_nid_t nid,
          const struct auto_pin_cfg *cfg,
          const char *name, char *label, int maxlen,
          int *indexp)
{
 unsigned int def_conf = snd_hda_codec_get_pincfg(codec, nid);
 int attr = snd_hda_get_input_pin_attr(def_conf);
 const char *pfx, *sfx = "";


 if (!strcmp(name, "Line Out") && attr == INPUT_PIN_ATTR_INT)
  name = "Speaker";
 pfx = check_output_pfx(codec, nid);

 if (cfg) {

  sfx = check_output_sfx(nid, cfg->line_out_pins, cfg->line_outs,
           indexp);
  if (!sfx)
   sfx = check_output_sfx(nid, cfg->speaker_pins, cfg->speaker_outs,
            indexp);
  if (!sfx) {

   int idx = get_hp_label_index(codec, nid, cfg->hp_pins,
           cfg->hp_outs);
   if (idx >= 0 && indexp)
    *indexp = idx;
   sfx = "";
  }
 }
 snprintf(label, maxlen, "%s%s%s", pfx, name, sfx);
 return 1;
}
