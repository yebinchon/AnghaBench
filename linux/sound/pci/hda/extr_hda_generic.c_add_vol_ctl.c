
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {unsigned int* ctls; } ;
struct hda_codec {int spec; } ;


 int HDA_CTL_WIDGET_VOL ;
 size_t NID_PATH_VOL_CTL ;
 int __add_pb_vol_ctrl (int ,int ,char const*,int,unsigned int) ;
 unsigned int amp_val_replace_channels (unsigned int,unsigned int) ;

__attribute__((used)) static int add_vol_ctl(struct hda_codec *codec, const char *pfx, int cidx,
         unsigned int chs, struct nid_path *path)
{
 unsigned int val;
 if (!path)
  return 0;
 val = path->ctls[NID_PATH_VOL_CTL];
 if (!val)
  return 0;
 val = amp_val_replace_channels(val, chs);
 return __add_pb_vol_ctrl(codec->spec, HDA_CTL_WIDGET_VOL, pfx, cidx, val);
}
