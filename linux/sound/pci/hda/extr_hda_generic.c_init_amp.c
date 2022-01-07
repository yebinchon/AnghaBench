
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int get_amp_val_to_activate (struct hda_codec*,int ,int,unsigned int,int) ;
 scalar_t__ is_stereo_amps (struct hda_codec*,int ,int) ;
 unsigned int query_amp_caps (struct hda_codec*,int ,int) ;
 int snd_hda_codec_amp_init (struct hda_codec*,int ,int ,int,int,int,int) ;
 int snd_hda_codec_amp_init_stereo (struct hda_codec*,int ,int,int,int,int) ;

__attribute__((used)) static void init_amp(struct hda_codec *codec, hda_nid_t nid, int dir, int idx)
{
 unsigned int caps = query_amp_caps(codec, nid, dir);
 int val = get_amp_val_to_activate(codec, nid, dir, caps, 0);

 if (is_stereo_amps(codec, nid, dir))
  snd_hda_codec_amp_init_stereo(codec, nid, dir, idx, 0xff, val);
 else
  snd_hda_codec_amp_init(codec, nid, 0, dir, idx, 0xff, val);
}
