
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpname ;
struct snd_kcontrol_new {void* put; } ;
struct hda_gen_spec {int dummy; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int ENOMEM ;
 int HDA_CTL_WIDGET_MUTE ;
 int HDA_CTL_WIDGET_VOL ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 struct snd_kcontrol_new* add_control (struct hda_gen_spec*,int,char*,int,int ) ;
 int amp_val_replace_channels (unsigned int,int) ;
 void* cap_single_sw_put ;
 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static int add_single_cap_ctl(struct hda_codec *codec, const char *label,
         int idx, bool is_switch, unsigned int ctl,
         bool inv_dmic)
{
 struct hda_gen_spec *spec = codec->spec;
 char tmpname[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
 int type = is_switch ? HDA_CTL_WIDGET_MUTE : HDA_CTL_WIDGET_VOL;
 const char *sfx = is_switch ? "Switch" : "Volume";
 unsigned int chs = inv_dmic ? 1 : 3;
 struct snd_kcontrol_new *knew;

 if (!ctl)
  return 0;

 if (label)
  snprintf(tmpname, sizeof(tmpname),
    "%s Capture %s", label, sfx);
 else
  snprintf(tmpname, sizeof(tmpname),
    "Capture %s", sfx);
 knew = add_control(spec, type, tmpname, idx,
      amp_val_replace_channels(ctl, chs));
 if (!knew)
  return -ENOMEM;
 if (is_switch)
  knew->put = cap_single_sw_put;
 if (!inv_dmic)
  return 0;


 if (label)
  snprintf(tmpname, sizeof(tmpname),
    "Inverted %s Capture %s", label, sfx);
 else
  snprintf(tmpname, sizeof(tmpname),
    "Inverted Capture %s", sfx);
 knew = add_control(spec, type, tmpname, idx,
      amp_val_replace_channels(ctl, 2));
 if (!knew)
  return -ENOMEM;
 if (is_switch)
  knew->put = cap_single_sw_put;
 return 0;
}
