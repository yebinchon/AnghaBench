
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_AMP_VOLMASK ;
 unsigned int get_amp_max_value (struct hda_codec*,int ,int,int ) ;
 int snd_hda_codec_amp_update (struct hda_codec*,int ,int,int,int,int ,unsigned int) ;

__attribute__((used)) static inline int
update_amp_value(struct hda_codec *codec, hda_nid_t nid,
   int ch, int dir, int idx, unsigned int ofs,
   unsigned int val)
{
 unsigned int maxval;

 if (val > 0)
  val += ofs;

 maxval = get_amp_max_value(codec, nid, dir, 0);
 if (val > maxval)
  val = maxval;
 return snd_hda_codec_amp_update(codec, nid, ch, dir, idx,
     HDA_AMP_VOLMASK, val);
}
