
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * c; } ;
struct snd_kcontrol_new {int private_value; int put; int get; int info; TYPE_1__ tlv; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 struct snd_kcontrol_new HDA_CODEC_VOLUME_MONO (char*,int ,int,int ,int) ;
 int HDA_COMPOSE_AMP_VAL (int ,int,int ,int) ;
 int HDA_INPUT ;
 int HDA_OUTPUT ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;

 int ca0132_alt_effect_slider_info ;
 int ca0132_alt_effect_slider_put ;
 int ca0132_alt_slider_ctl_get ;
 int ca0132_alt_xbass_xover_slider_ctl_get ;
 int ca0132_alt_xbass_xover_slider_info ;
 int ca0132_alt_xbass_xover_slider_put ;
 char** dirstr ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;
 int sprintf (char*,char*,char const*,char*) ;

__attribute__((used)) static int ca0132_alt_add_effect_slider(struct hda_codec *codec, hda_nid_t nid,
     const char *pfx, int dir)
{
 char namestr[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
 int type = dir ? HDA_INPUT : HDA_OUTPUT;
 struct snd_kcontrol_new knew =
  HDA_CODEC_VOLUME_MONO(namestr, nid, 1, 0, type);

 sprintf(namestr, "FX: %s %s Volume", pfx, dirstr[dir]);

 knew.tlv.c = ((void*)0);

 switch (nid) {
 case 128:
  knew.info = ca0132_alt_xbass_xover_slider_info;
  knew.get = ca0132_alt_xbass_xover_slider_ctl_get;
  knew.put = ca0132_alt_xbass_xover_slider_put;
  break;
 default:
  knew.info = ca0132_alt_effect_slider_info;
  knew.get = ca0132_alt_slider_ctl_get;
  knew.put = ca0132_alt_effect_slider_put;
  knew.private_value =
   HDA_COMPOSE_AMP_VAL(nid, 1, 0, type);
  break;
 }

 return snd_hda_ctl_add(codec, nid, snd_ctl_new1(&knew, codec));
}
