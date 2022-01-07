
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ snd_hda_get_conn_index (struct hda_codec*,int ,int ,int) ;

__attribute__((used)) static bool is_reachable_path(struct hda_codec *codec,
         hda_nid_t from_nid, hda_nid_t to_nid)
{
 if (!from_nid || !to_nid)
  return 0;
 return snd_hda_get_conn_index(codec, to_nid, from_nid, 1) >= 0;
}
