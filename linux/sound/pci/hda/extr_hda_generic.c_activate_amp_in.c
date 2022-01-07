
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {scalar_t__* path; int* idx; } ;
struct hda_gen_spec {scalar_t__ const mixer_merge_nid; } ;
struct hda_codec {scalar_t__ single_adc_amp; struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_WID_AUD_IN ;
 int AC_WID_PIN ;
 int HDA_INPUT ;
 int activate_amp (struct hda_codec*,scalar_t__,int ,int,int,int) ;
 int check_and_activate_amp (struct hda_codec*,scalar_t__,int ,int,int,int) ;
 int get_wcaps (struct hda_codec*,scalar_t__) ;
 int get_wcaps_type (int ) ;
 int init_amp (struct hda_codec*,scalar_t__,int ,int) ;
 int snd_hda_get_conn_list (struct hda_codec*,scalar_t__,scalar_t__ const**) ;

__attribute__((used)) static void activate_amp_in(struct hda_codec *codec, struct nid_path *path,
       int i, bool enable, bool add_aamix)
{
 struct hda_gen_spec *spec = codec->spec;
 const hda_nid_t *conn;
 int n, nums, idx;
 int type;
 hda_nid_t nid = path->path[i];

 nums = snd_hda_get_conn_list(codec, nid, &conn);
 if (nums < 0)
  return;
 type = get_wcaps_type(get_wcaps(codec, nid));
 if (type == AC_WID_PIN ||
     (type == AC_WID_AUD_IN && codec->single_adc_amp)) {
  nums = 1;
  idx = 0;
 } else
  idx = path->idx[i];

 for (n = 0; n < nums; n++)
  init_amp(codec, nid, HDA_INPUT, n);




 for (n = 0; n < nums; n++) {
  if (n != idx) {
   if (conn[n] != spec->mixer_merge_nid)
    continue;

   if (!add_aamix) {
    activate_amp(codec, nid, HDA_INPUT, n, n, 0);
    continue;
   }
  }
  check_and_activate_amp(codec, nid, HDA_INPUT, n, idx, enable);
 }
}
