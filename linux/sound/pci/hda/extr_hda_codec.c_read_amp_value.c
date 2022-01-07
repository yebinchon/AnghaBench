
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int HDA_AMP_VOLMASK ;
 unsigned int snd_hda_codec_amp_read (struct hda_codec*,int ,int,int,int) ;

__attribute__((used)) static inline unsigned int
read_amp_value(struct hda_codec *codec, hda_nid_t nid,
        int ch, int dir, int idx, unsigned int ofs)
{
 unsigned int val;
 val = snd_hda_codec_amp_read(codec, nid, ch, dir, idx);
 val &= HDA_AMP_VOLMASK;
 if (val >= ofs)
  val -= ofs;
 else
  val = 0;
 return val;
}
