
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {scalar_t__ power_save_node; } ;
typedef int hda_nid_t ;


 int set_path_power (struct hda_codec*,int ,int,int) ;

void snd_hda_gen_stream_pm(struct hda_codec *codec, hda_nid_t nid, bool on)
{
 if (codec->power_save_node)
  set_path_power(codec, nid, -1, on);
}
