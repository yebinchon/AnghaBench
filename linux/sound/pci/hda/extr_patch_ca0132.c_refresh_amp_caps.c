
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_AMP_IN_CAP ;
 int AC_PAR_AMP_OUT_CAP ;
 int HDA_OUTPUT ;
 int snd_hda_override_amp_caps (struct hda_codec*,int ,int,unsigned int) ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void refresh_amp_caps(struct hda_codec *codec, hda_nid_t nid, int dir)
{
 unsigned int caps;

 caps = snd_hda_param_read(codec, nid, dir == HDA_OUTPUT ?
      AC_PAR_AMP_OUT_CAP : AC_PAR_AMP_IN_CAP);
 snd_hda_override_amp_caps(codec, nid, dir, caps);
}
