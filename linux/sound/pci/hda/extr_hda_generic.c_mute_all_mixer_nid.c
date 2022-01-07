
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int const hda_nid_t ;


 int HDA_AMP_MUTE ;
 int HDA_INPUT ;
 int HDA_OUTPUT ;
 int nid_has_mute (struct hda_codec*,int const,int ) ;
 scalar_t__ nid_has_volume (struct hda_codec*,int const,int ) ;
 int snd_hda_get_conn_list (struct hda_codec*,int const,int const**) ;
 int update_amp (struct hda_codec*,int const,int ,int,int,int ) ;

__attribute__((used)) static void mute_all_mixer_nid(struct hda_codec *codec, hda_nid_t mix)
{
 int i, nums;
 const hda_nid_t *conn;
 bool has_amp;

 nums = snd_hda_get_conn_list(codec, mix, &conn);
 has_amp = nid_has_mute(codec, mix, HDA_INPUT);
 for (i = 0; i < nums; i++) {
  if (has_amp)
   update_amp(codec, mix, HDA_INPUT, i,
       0xff, HDA_AMP_MUTE);
  else if (nid_has_volume(codec, conn[i], HDA_OUTPUT))
   update_amp(codec, conn[i], HDA_OUTPUT, 0,
       0xff, HDA_AMP_MUTE);
 }
}
