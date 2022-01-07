
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {unsigned int* ctls; } ;
struct hda_codec {int spec; } ;
typedef int hda_nid_t ;


 int HDA_CTL_BIND_MUTE ;
 int HDA_CTL_WIDGET_MUTE ;
 scalar_t__ HDA_INPUT ;
 size_t NID_PATH_MUTE_CTL ;
 int __add_pb_sw_ctrl (int ,int,char const*,int,unsigned int) ;
 unsigned int amp_val_replace_channels (unsigned int,unsigned int) ;
 scalar_t__ get_amp_direction_ (unsigned int) ;
 int get_amp_nid_ (unsigned int) ;
 int snd_hda_get_num_conns (struct hda_codec*,int ) ;

__attribute__((used)) static int add_sw_ctl(struct hda_codec *codec, const char *pfx, int cidx,
        unsigned int chs, struct nid_path *path)
{
 unsigned int val;
 int type = HDA_CTL_WIDGET_MUTE;

 if (!path)
  return 0;
 val = path->ctls[NID_PATH_MUTE_CTL];
 if (!val)
  return 0;
 val = amp_val_replace_channels(val, chs);
 if (get_amp_direction_(val) == HDA_INPUT) {
  hda_nid_t nid = get_amp_nid_(val);
  int nums = snd_hda_get_num_conns(codec, nid);
  if (nums > 1) {
   type = HDA_CTL_BIND_MUTE;
   val |= nums << 19;
  }
 }
 return __add_pb_sw_ctrl(codec->spec, type, pfx, cidx, val);
}
